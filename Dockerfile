# استخدم نسخة رسمية خفيفة للـ Python
FROM python:3.7-alpine

# تعيين مجلد العمل داخل الحاوية
WORKDIR /app

# تحديد البيئة الخاصة بالتطبيق
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# تثبيت الأدوات اللازمة فقط مرة واحدة
RUN apk update && \
    apk add --no-cache gcc musl-dev linux-headers

# نسخ ملف المتطلبات أولاً لتجنب إعادة التثبيت عند التغيير في الكود
COPY requirements.txt .

# تثبيت الحزم من ملف requirements
RUN pip install --no-cache-dir -r requirements.txt

# فتح المنفذ 5000 للتطبيق
EXPOSE 5000

# نسخ باقي الملفات إلى الحاوية
COPY . .

# أمر لتشغيل التطبيق
CMD ["flask", "run"]
