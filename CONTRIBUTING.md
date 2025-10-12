# 🤝 دليل المساهمة | Contributing Guide

<div align="center">

```
  ██████╗ ██████╗ ███╗   ██╗████████╗██████╗ ██╗██████╗ ██╗   ██╗████████╗███████╗
 ██╔════╝██╔═══██╗████╗  ██║╚══██╔══╝██╔══██╗██║██╔══██╗██║   ██║╚══██╔══╝██╔════╝
 ██║     ██║   ██║██╔██╗ ██║   ██║   ██████╔╝██║██████╔╝██║   ██║   ██║   █████╗  
 ██║     ██║   ██║██║╚██╗██║   ██║   ██╔══██╗██║██╔══██╗██║   ██║   ██║   ██╔══╝  
 ╚██████╗╚██████╔╝██║ ╚████║   ██║   ██║  ██║██║██████╔╝╚██████╔╝   ██║   ███████╗
  ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝   ╚═╝   ╚═╝  ╚═╝╚═╝╚═════╝  ╚═════╝    ╚═╝   ╚══════╝
```

### 🌟 شكراً لاهتمامك بالمساهمة في **digital-genie-secrets**!

</div>

---

## 📋 جدول المحتويات

- [قواعد السلوك](#-قواعد-السلوك)
- [كيف يمكنني المساهمة؟](#-كيف-يمكنني-المساهمة)
- [إعداد بيئة التطوير](#️-إعداد-بيئة-التطوير)
- [معايير الكود](#-معايير-الكود)
- [عملية Pull Request](#-عملية-pull-request)
- [إرشادات Commit](#-إرشادات-commit)
- [الاختبارات](#-الاختبارات)
- [التوثيق](#-التوثيق)

---

## 📜 قواعد السلوك

### 🌍 مجتمعنا

نحن ملتزمون بتوفير بيئة ترحيبية وشاملة للجميع. نتوقع من جميع المساهمين:

✅ **افعل:**
- كن محترماً ومهذباً
- تقبل النقد البناء
- ركز على ما هو أفضل للمجتمع
- أظهر التعاطف مع الآخرين

❌ **لا تفعل:**
- استخدام لغة مسيئة أو تحرش
- نشر معلومات خاصة للآخرين
- التعليقات المسيئة أو المهينة
- أي سلوك غير احترافي

---

## 🚀 كيف يمكنني المساهمة؟

### 1️⃣ الإبلاغ عن الأخطاء 🐛

قبل إنشاء تقرير خطأ:
- ✅ تحقق من Issues الموجودة
- ✅ تأكد من أنك تستخدم أحدث إصدار
- ✅ اجمع معلومات مفصلة عن المشكلة

**قالب تقرير الخطأ:**

```markdown
## وصف الخطأ
وصف واضح ومختصر للمشكلة.

## خطوات إعادة الإنتاج
1. انتقل إلى '...'
2. انقر على '...'
3. قم بالتمرير إلى '...'
4. شاهد الخطأ

## السلوك المتوقع
ما الذي كنت تتوقع حدوثه.

## لقطات الشاشة
إن أمكن، أضف لقطات شاشة.

## البيئة
- نظام التشغيل: [مثل: Ubuntu 22.04]
- إصدار Python: [مثل: 3.10]
- إصدار المشروع: [مثل: 3.0.1]

## معلومات إضافية
أي سياق آخر حول المشكلة.
```

### 2️⃣ اقتراح ميزة جديدة ✨

**قالب اقتراح الميزة:**

```markdown
## وصف الميزة
وصف واضح للميزة المقترحة.

## الدافع
لماذا تعتقد أن هذه الميزة مفيدة؟

## الحل المقترح
كيف ترى تنفيذ هذه الميزة؟

## البدائل
هل فكرت في حلول بديلة؟

## معلومات إضافية
أي تفاصيل إضافية أو mockups.
```

### 3️⃣ تحسين التوثيق 📚

- إصلاح الأخطاء الإملائية
- تحسين الشرح
- إضافة أمثلة
- ترجمة الوثائق

### 4️⃣ المساهمة بالكود 💻

راجع القسم التالي للتفاصيل الكاملة.

---

## 🛠️ إعداد بيئة التطوير

### المتطلبات الأساسية

```bash
# Python 3.9 أو أحدث
python --version

# Git
git --version

# Docker (اختياري)
docker --version
```

### خطوات الإعداد

```bash
# 1. Fork المستودع على GitHub
# اضغط على زر "Fork" في الأعلى

# 2. استنساخ المستودع
git clone https://github.com/YOUR-USERNAME/digital-genie-secrets.git
cd digital-genie-secrets

# 3. إضافة المستودع الأصلي كـ upstream
git remote add upstream https://github.com/original/digital-genie-secrets.git

# 4. إنشاء بيئة افتراضية
python -m venv venv
source venv/bin/activate  # على Linux/Mac
# أو
venv\Scripts\activate  # على Windows

# 5. تثبيت المتطلبات
pip install -r requirements.txt
pip install -r requirements-dev.txt

# 6. تثبيت pre-commit hooks
pre-commit install

# 7. تشغيل الاختبارات للتأكد من الإعداد
pytest
```

### بنية المشروع

```
digital-genie-secrets/
├── src/                    # الكود المصدري
│   ├── core/              # الوحدات الأساسية
│   ├── security/          # وحدات الأمان
│   ├── ai/                # الذكاء الاصطناعي
│   └── utils/             # أدوات مساعدة
├── tests/                 # الاختبارات
│   ├── unit/             # اختبارات الوحدة
│   ├── integration/      # اختبارات التكامل
│   └── e2e/              # اختبارات end-to-end
├── docs/                  # التوثيق
├── scripts/               # سكريبتات مساعدة
└── examples/              # أمثلة الاستخدام
```

---

## 📝 معايير الكود

### Python Style Guide

نتبع **PEP 8** مع بعض الاستثناءات:

```python
# ✅ جيد
def calculate_threat_score(threat_data: dict) -> float:
    """
    حساب درجة خطورة التهديد.
    
    Args:
        threat_data: بيانات التهديد
        
    Returns:
        درجة الخطورة من 0 إلى 10
    """
    severity = threat_data.get("severity", 0)
    frequency = threat_data.get("frequency", 1)
    
    return min(severity * frequency / 10, 10.0)


# ❌ سيء
def calc(d):
    s=d.get("severity",0)
    f=d.get("frequency",1)
    return s*f/10
```

### معايير التسمية

```python
# Classes: PascalCase
class ThreatDetector:
    pass

# Functions/Methods: snake_case
def analyze_network_traffic():
    pass

# Constants: UPPER_SNAKE_CASE
MAX_RETRY_ATTEMPTS = 3

# Variables: snake_case
user_id = 12345
```

### Type Hints

استخدم Type Hints دائماً:

```python
from typing import List, Dict, Optional

def process_logs(
    logs: List[str],
    filters: Optional[Dict[str, str]] = None
) -> List[Dict[str, any]]:
    """معالجة السجلات مع فلاتر اختيارية."""
    pass
```

### Docstrings

استخدم Google Style Docstrings:

```python
def encrypt_data(data: bytes, key: bytes) -> bytes:
    """
    تشفير البيانات باستخدام AES-256.
    
    Args:
        data: البيانات المراد تشفيرها
        key: مفتاح التشفير (32 بايت)
        
    Returns:
        البيانات المشفرة
        
    Raises:
        ValueError: إذا كان طول المفتاح غير صحيح
        
    Examples:
        >>> key = os.urandom(32)
        >>> encrypted = encrypt_data(b"secret", key)
    """
    if len(key) != 32:
        raise ValueError("يجب أن يكون المفتاح 32 بايت")
    
    # التشفير هنا
    pass
```

### Linting & Formatting

```bash
# استخدام Black للتنسيق
black src/ tests/

# استخدام isort لترتيب الـ imports
isort src/ tests/

# استخدام flake8 للتحقق
flake8 src/ tests/

# استخدام mypy للتحقق من الأنواع
mypy src/

# أو استخدام pre-commit لتشغيل كل شيء
pre-commit run --all-files
```

---

## 🔄 عملية Pull Request

### 1️⃣ إنشاء فرع جديد

```bash
# تحديث الفرع الرئيسي
git checkout main
git pull upstream main

# إنشاء فرع جديد
git checkout -b feature/amazing-feature

# أو لإصلاح خطأ
git checkout -b fix/bug-description
```

### 2️⃣ كتابة الكود

- اتبع معايير الكود
- أضف اختبارات
- حدّث التوثيق

### 3️⃣ Commit التغييرات

```bash
# إضافة الملفات
git add .

# Commit مع رسالة واضحة
git commit -m "✨ feat: إضافة ميزة كشف التهديدات المتقدمة"
```

### 4️⃣ Push ودفع PR

```bash
# دفع الفرع
git push origin feature/amazing-feature

# افتح Pull Request على GitHub
```

### 5️⃣ قالب Pull Request

```markdown
## الوصف
وصف موجز للتغييرات.

## نوع التغيير
- [ ] إصلاح خطأ (bug fix)
- [ ] ميزة جديدة (feature)
- [ ] تحسين (improvement)
- [ ] تغيير كاسر (breaking change)
- [ ] توثيق (documentation)

## كيف تم الاختبار؟
صف الاختبارات التي أجريتها.

## قائمة التحقق
- [ ] الكود يتبع معايير المشروع
- [ ] أجريت self-review للكود
- [ ] أضفت تعليقات واضحة
- [ ] حدثت التوثيق
- [ ] لا توجد تحذيرات جديدة
- [ ] أضفت اختبارات
- [ ] الاختبارات تمر بنجاح
- [ ] الـ CI/CD يعمل

## لقطات شاشة (إن وجدت)

## ملاحظات إضافية
```

---

## 💬 إرشادات Commit

### تنسيق Commit Message

```
<type>(<scope>): <subject>

<body>

<footer>
```

### الأنواع (Types)

| النوع | الوصف | Emoji |
|-------|-------|-------|
| `feat` | ميزة جديدة | ✨ |
| `fix` | إصلاح خطأ | 🐛 |
| `docs` | تعديل التوثيق | 📚 |
| `style` | تنسيق الكود | 💎 |
| `refactor` | إعادة هيكلة | ♻️ |
| `perf` | تحسين الأداء | ⚡ |
| `test` | إضافة اختبارات | ✅ |
| `chore` | مهام صيانة | 🔧 |
| `ci` | تعديل CI/CD | 👷 |
| `security` | تحديث أمني | 🔒 |

### أمثلة

```bash
# ميزة جديدة
git commit -m "✨ feat(ai): إضافة نموذج كشف الثغرات بالذكاء الاصطناعي"

# إصلاح خطأ
git commit -m "🐛 fix(auth): إصلاح مشكلة تسجيل الدخول مع 2FA"

# توثيق
git commit -m "📚 docs(api): تحديث توثيق API endpoints"

# تحسين أداء
git commit -m "⚡ perf(scanner): تحسين سرعة فحص الثغرات بنسبة 40%"

# تحديث أمني
git commit -m "🔒 security(crypto): تحديث خوارزميات التشفير إلى AES-256-GCM"
```

---

## ✅ الاختبارات

### كتابة الاختبارات

```python
# tests/unit/test_encryption.py
import pytest
from digital_genie.crypto import Encryptor

class TestEncryptor:
    """اختبارات وحدة التشفير."""
    
    def test_encrypt_decrypt(self):
        """اختبار التشفير وفك التشفير."""
        encryptor = Encryptor(algorithm="AES-256-GCM")
        data = b"sensitive data"
        
        encrypted = encryptor.encrypt(data)
        decrypted = encryptor.decrypt(encrypted)
        
        assert decrypted == data
        assert encrypted != data
    
    def test_invalid_key_length(self):
        """اختبار رفض مفتاح بطول خاطئ."""
        with pytest.raises(ValueError):
            Encryptor(key=b"short")
```

### تشغيل الاختبارات

```bash
# تشغيل كل الاختبارات
pytest

# مع تغطية الكود
pytest --cov=src --cov-report=html

# تشغيل اختبارات محددة
pytest tests/unit/test_encryption.py

# مع verbose output
pytest -v

# تشغيل آخر اختبار فشل
pytest --lf
```

### معايير التغطية

- ✅ الهدف: 80%+ تغطية
- 🎯 الكود الحرج: 95%+ تغطية
- ⚠️ الحد الأدنى: 70% تغطية

---

## 📖 التوثيق

### أنواع التوثيق

1. **Docstrings** - لكل دالة/كلاس
2. **README.md** - نظرة عامة
3. **API Documentation** - في `/docs/api/`
4. **User Guides** - في `/docs/guides/`
5. **Examples** - في `/examples/`

### بناء التوثيق

```bash
# تثبيت Sphinx
pip install sphinx sphinx-rtd-theme

# بناء التوثيق
cd docs/
make html

# عرض التوثيق
open _build/html/index.html
```

---

## 🏆 التقدير والشكر

### المساهمون المميزون

سيتم إضافة المساهمين النشطين إلى:
- 📜 قائمة CONTRIBUTORS.md
- 🎖️ صفحة التقدير في الموقع
- 📢 الإشادة في Release Notes

---

## 📞 الحصول على المساعدة

### قنوات التواصل

- 💬 **Discord**: [انضم للسيرفر](https://discord.gg/digital-genie)
- 💌 **Email**: contribute@digital-genie.com
- 🐛 **Issues**: [افتح Issue](https://github.com/digital-genie-secrets/issues)
- 💡 **Discussions**: [شارك أفكارك](https://github.com/digital-genie-secrets/discussions)

---

<div align="center">

##
