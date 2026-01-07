# main.R
# 現在の日時を取得してデータフレームを作る
current_time <- Sys.time()
df <- data.frame(timestamp = current_time, memo = "自動実行テスト成功")

# ファイル名
file_name <- "data_log.csv"

# すでにファイルがあれば「追記」、なければ「新規作成」
if (file.exists(file_name)) {
  write.table(df, file_name, sep = ",", row.names = FALSE, col.names = FALSE, append = TRUE)
} else {
  write.csv(df, file_name, row.names = FALSE)
}

print("CSVへの書き込みが完了しました")
