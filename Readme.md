# Software Reliability Assessment Tool のための Docker 基盤

_[Docker 入門：Python Django サーバを Docker で構築する](https://rinsaka.com/docker/401.html) のページをベースに作成した，[Software Reliability Assessment Tool (https://github.com/rinsaka/PythonDjangoSRATool)](https://github.com/rinsaka/PythonDjangoSRATool) を Docker で動かすための基盤です．_

## 使い方

1. 任意のフォルダにこのリポジトリを展開します．
2. django フォルダの中に入り，[Software Reliability Assessment Tool](https://github.com/rinsaka/PythonDjangoSRATool) をダウンロード，そのフォルダ名を code に変更します．
```
cd django
git clone https://github.com/rinsaka/PythonDjangoSRATool.git
mv mv PythonDjangoSRATool code
cd ..
```
3. コンテナをビルド，起動します．
```
docker compose up -d --build
```
4. データベースのマイグレーションを行います．
```
docker compose exec python_app /bin/bash
python manage.py migrate
exit
```
5. Webブラウザで接続します．
```
http://localhost/
```
6. 終了する際はコンテナを破棄します．
```
docker compose down
```
