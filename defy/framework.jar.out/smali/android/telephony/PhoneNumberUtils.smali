.class public Landroid/telephony/PhoneNumberUtils;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final CCC_LENGTH:I = 0x0

.field private static final COUNTLY_CALLING_CALL:[Z = null

.field private static final DBG:Z = false

.field public static final FORMAT_JAPAN:I = 0x2

.field public static final FORMAT_NANP:I = 0x1

.field public static final FORMAT_UNKNOWN:I = 0x0

.field private static final GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final KEYPAD_MAP:Landroid/util/SparseIntArray; = null

.field static final LOG_TAG:Ljava/lang/String; = "PhoneNumberUtils"

.field static final MIN_MATCH:I = 0xb

.field static final MIN_NON_SHORTCODE_LENGTH:I = 0x7

.field private static final NANP_COUNTRIES:[Ljava/lang/String; = null

.field private static final NANP_IDP_STRING:Ljava/lang/String; = "011"

.field private static final NANP_LENGTH:I = 0xa

.field private static final NANP_STATE_DASH:I = 0x4

.field private static final NANP_STATE_DIGIT:I = 0x1

.field private static final NANP_STATE_ONE:I = 0x3

.field private static final NANP_STATE_PLUS:I = 0x2

.field public static final PAUSE:C = ','

.field private static final PLUS_SIGN_CHAR:C = '+'

.field private static final PLUS_SIGN_STRING:Ljava/lang/String; = "+"

.field static final PROP_MAX_MATCH:Ljava/lang/String; = "gsm.sim.max.match"

.field static final PROP_MIN_MATCH:Ljava/lang/String; = "gsm.sim.min.match"

.field public static final TOA_International:I = 0x91

.field public static final TOA_Unknown:I = 0x81

.field public static final WAIT:C = ';'

.field public static final WILD:C = 'N'

.field private static final sMccMnc2ExitCodes:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSepBtnMccAndMnc:Ljava/lang/String; = "/"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x34

    const/16 v6, 0x33

    const/16 v5, 0x32

    const/16 v4, 0x39

    const/16 v3, 0x37

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->sMccMnc2ExitCodes:Ljava/util/HashMap;

    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->initMapOfMccMnc2ExitCodes()V

    const-string v0, "[\\+]?[0-9.-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "US"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CA"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "AS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "AI"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "AG"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "BS"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "BB"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "BM"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "VG"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "KY"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "DM"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "DO"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "GD"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "GU"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "JM"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "PR"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "MS"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "MP"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "KN"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "LC"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "VC"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "TT"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "TC"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "VI"

    aput-object v2, v0, v1

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x61

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x62

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x63

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x41

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x42

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x43

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x44

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x45

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x46

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x67

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x69

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x47

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x48

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x49

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6a

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6b

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6c

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4a

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4b

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4c

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6d

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6e

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6f

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4d

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4e

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4f

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x70

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x71

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x72

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x73

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x50

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x51

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x52

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x53

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x74

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x75

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x76

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x54

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x55

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x56

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x77

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x78

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x79

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x7a

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x57

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x58

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x59

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x64

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTLY_CALLING_CALL:[Z

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTLY_CALLING_CALL:[Z

    array-length v0, v0

    sput v0, Landroid/telephony/PhoneNumberUtils;->CCC_LENGTH:I

    return-void

    :array_0
    .array-data 0x1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "dialableIndex"
    .parameter "origStr"
    .parameter "dialStr"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    if-ne p0, v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v1, ret:Ljava/lang/StringBuilder;
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v1           #ret:Ljava/lang/StringBuilder;
    .local v2, retStr:Ljava/lang/String;
    :goto_0
    return-object v2

    .end local v2           #retStr:Ljava/lang/String;
    :cond_0
    invoke-virtual {p2, v4, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .local v0, nonDigitStr:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #retStr:Ljava/lang/String;
    goto :goto_0
.end method

.method private static bcdToChar(B)C
    .locals 1
    .parameter "b"

    .prologue
    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    :goto_0
    return v0

    :cond_0
    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x2a

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x23

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x2c

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x4e

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x3b

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static calledPartyBCDFragmentToString([BII)Ljava/lang/String;
    .locals 2
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v0, ret:Ljava/lang/StringBuilder;
    invoke-static {v0, p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static calledPartyBCDToString([BII)Ljava/lang/String;
    .locals 12
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const-string v11, ""

    const/4 v2, 0x0

    .local v2, prependPlus:Z
    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v5, p2, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v3, ret:Ljava/lang/StringBuilder;
    if-ge p2, v8, :cond_0

    const-string v5, ""

    move-object v5, v11

    :goto_0
    return-object v5

    :cond_0
    aget-byte v5, p0, p1

    and-int/lit16 v5, v5, 0xf0

    const/16 v6, 0x90

    if-ne v5, v6, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/lit8 v5, p1, 0x1

    sub-int v6, p2, v7

    invoke-static {v3, p0, v5, v6}, Landroid/telephony/PhoneNumberUtils;->internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_2

    const-string v5, ""

    move-object v5, v11

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, retString:Ljava/lang/String;
    const-string v5, "(^[#*])(.*)([#*])(.*)(#)$"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .local v1, p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, ""

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #ret:Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .restart local v3       #ret:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v0           #m:Ljava/util/regex/Matcher;
    .end local v1           #p:Ljava/util/regex/Pattern;
    .end local v4           #retString:Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .restart local v0       #m:Ljava/util/regex/Matcher;
    .restart local v1       #p:Ljava/util/regex/Pattern;
    .restart local v4       #retString:Ljava/lang/String;
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #ret:Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .restart local v3       #ret:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const-string v5, "(^[#*])(.*)([#*])(.*)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #ret:Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .restart local v3       #ret:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #ret:Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .restart local v3       #ret:Ljava/lang/StringBuilder;
    const/16 v5, 0x2b

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "dialStr"

    .prologue
    const-string v4, ""

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "gsm.operator.iso-country"

    const-string v3, ""

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, currIso:Ljava/lang/String;
    const-string v2, "gsm.sim.operator.iso-country"

    const-string v3, ""

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, defaultIso:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, v2, v3}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .end local v0           #currIso:Ljava/lang/String;
    .end local v1           #defaultIso:Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    move-object v2, p0

    goto :goto_0
.end method

.method public static cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;
    .locals 8
    .parameter "dialStr"
    .parameter "currFormat"
    .parameter "defaultFormt"

    .prologue
    const/4 v7, 0x1

    move-object v3, p0

    .local v3, retStr:Ljava/lang/String;
    if-eqz p0, :cond_2

    const-string v5, "+"

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    if-ne p1, p2, :cond_7

    if-ne p1, v7, :cond_7

    const/4 v2, 0x0

    .local v2, postDialStr:Ljava/lang/String;
    move-object v4, p0

    .local v4, tempDialStr:Ljava/lang/String;
    const/4 v3, 0x0

    :cond_0
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, networkDialStr:Ljava/lang/String;
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->processPlusCodeWithinNanp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    if-nez v3, :cond_3

    move-object v3, v1

    :goto_0
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->findDialableIndexFromPostDialStr(Ljava/lang/String;)I

    move-result v0

    .local v0, dialableIndex:I
    if-lt v0, v7, :cond_5

    invoke-static {v0, v3, v2}, Landroid/telephony/PhoneNumberUtils;->appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .end local v0           #dialableIndex:I
    :cond_1
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .end local v1           #networkDialStr:Ljava/lang/String;
    .end local v2           #postDialStr:Ljava/lang/String;
    .end local v4           #tempDialStr:Ljava/lang/String;
    :cond_2
    :goto_2
    move-object v5, v3

    :goto_3
    return-object v5

    .restart local v1       #networkDialStr:Ljava/lang/String;
    .restart local v2       #postDialStr:Ljava/lang/String;
    .restart local v4       #tempDialStr:Ljava/lang/String;
    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    const-string v5, "checkAndProcessPlusCode: null newDialStr"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, p0

    goto :goto_3

    .restart local v0       #dialableIndex:I
    :cond_5
    if-gez v0, :cond_6

    const-string v2, ""

    :cond_6
    const-string v5, "wrong postDialStr="

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0           #dialableIndex:I
    .end local v1           #networkDialStr:Ljava/lang/String;
    .end local v2           #postDialStr:Ljava/lang/String;
    .end local v4           #tempDialStr:Ljava/lang/String;
    :cond_7
    const-string v5, "checkAndProcessPlusCode:non-NANP not supported"

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static charToBCD(C)I
    .locals 3
    .parameter "c"

    .prologue
    const/16 v1, 0x30

    if-lt p0, v1, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    sub-int v0, p0, v1

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_1

    const/16 v0, 0xa

    goto :goto_0

    :cond_1
    const/16 v0, 0x23

    if-ne p0, v0, :cond_2

    const/16 v0, 0xb

    goto :goto_0

    :cond_2
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_3

    const/16 v0, 0xc

    goto :goto_0

    :cond_3
    const/16 v0, 0x4e

    if-ne p0, v0, :cond_4

    const/16 v0, 0xd

    goto :goto_0

    :cond_4
    const/16 v0, 0x3b

    if-ne p0, v0, :cond_5

    const/16 v0, 0xe

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid char for BCD "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkPrefixIsIgnorable(Ljava/lang/String;II)Z
    .locals 3
    .parameter "str"
    .parameter "forwardIndex"
    .parameter "backwardIndex"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .local v0, trunk_prefix_was_read:Z
    :goto_0
    if-lt p2, p1, :cond_3

    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v1

    if-ltz v1, :cond_2

    if-eqz v0, :cond_0

    move v1, v2

    :goto_1
    return v1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static compare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "a"
    .parameter "b"

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10d000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .local v0, useStrict:Z
    invoke-static {p1, p2, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .parameter "a"
    .parameter "b"
    .parameter "useStrictComparation"

    .prologue
    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v3, 0x0

    .local v3, numNonDialableCharsInA:I
    const/4 v4, 0x0

    .local v4, numNonDialableCharsInB:I
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    .end local p0
    :goto_0
    move p1, v4

    .end local v4           #numNonDialableCharsInB:I
    .local p1, numNonDialableCharsInB:I
    move v0, p0

    move p0, v3

    .end local v3           #numNonDialableCharsInA:I
    .local p0, numNonDialableCharsInA:I
    :goto_1
    return v0

    .restart local v3       #numNonDialableCharsInA:I
    .restart local v4       #numNonDialableCharsInB:I
    .local p0, a:Ljava/lang/String;
    .local p1, b:Ljava/lang/String;
    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/4 p0, 0x0

    move p1, v4

    .end local v4           #numNonDialableCharsInB:I
    .local p1, numNonDialableCharsInB:I
    move v0, p0

    move p0, v3

    .end local v3           #numNonDialableCharsInA:I
    .local p0, numNonDialableCharsInA:I
    goto :goto_1

    .restart local v3       #numNonDialableCharsInA:I
    .restart local v4       #numNonDialableCharsInB:I
    .local p0, a:Ljava/lang/String;
    .local p1, b:Ljava/lang/String;
    :cond_4
    const-string v0, "gsm.sim.max.match"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, maxMatchProp:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .local v0, maxMatch:I
    move v5, v0

    .end local v0           #maxMatch:I
    .local v5, maxMatch:I
    :goto_2
    const-string v0, "gsm.sim.min.match"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, minMatchProp:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .local v0, minMatch:I
    move v6, v0

    .end local v0           #minMatch:I
    .local v6, minMatch:I
    :goto_3
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v0

    .local v0, ia:I
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v1

    .local v1, ib:I
    const/4 v2, 0x0

    .local v2, matched:I
    move v8, v4

    .end local v4           #numNonDialableCharsInB:I
    .local v8, numNonDialableCharsInB:I
    move v4, v2

    .end local v2           #matched:I
    .local v4, matched:I
    move v2, v3

    .end local v3           #numNonDialableCharsInA:I
    .local v2, numNonDialableCharsInA:I
    move v3, v1

    .end local v1           #ib:I
    .local v3, ib:I
    move v1, v0

    .end local v0           #ia:I
    .local v1, ia:I
    :goto_4
    if-ltz v1, :cond_13

    if-ltz v3, :cond_13

    const/4 v7, 0x0

    .local v7, skipCmp:Z
    if-eqz v5, :cond_7

    if-ne v4, v5, :cond_7

    move v0, v1

    .end local v1           #ia:I
    .restart local v0       #ia:I
    move v1, v3

    .end local v3           #ib:I
    .local v1, ib:I
    move v3, v8

    .end local v7           #skipCmp:Z
    .end local v8           #numNonDialableCharsInB:I
    .local v3, numNonDialableCharsInB:I
    :goto_5
    if-ge v4, v6, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    .end local p0           #a:Ljava/lang/String;
    sub-int/2addr p0, v2

    .local p0, effectiveALen:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .end local p1           #b:Ljava/lang/String;
    sub-int/2addr p1, v3

    .local p1, effectiveBLen:I
    if-ne p0, p1, :cond_a

    if-ne p0, v4, :cond_a

    const/4 p0, 0x1

    move p1, v3

    .end local v3           #numNonDialableCharsInB:I
    .local p1, numNonDialableCharsInB:I
    move v0, p0

    move p0, v2

    .end local v2           #numNonDialableCharsInA:I
    .local p0, numNonDialableCharsInA:I
    goto :goto_1

    .end local v1           #ib:I
    .end local v5           #maxMatch:I
    .end local v6           #minMatch:I
    .local v0, maxMatchProp:Ljava/lang/String;
    .local v3, numNonDialableCharsInA:I
    .local v4, numNonDialableCharsInB:I
    .local p0, a:Ljava/lang/String;
    .local p1, b:Ljava/lang/String;
    :cond_5
    const/4 v0, 0x0

    .local v0, maxMatch:I
    move v5, v0

    .end local v0           #maxMatch:I
    .restart local v5       #maxMatch:I
    goto :goto_2

    .local v0, minMatchProp:Ljava/lang/String;
    :cond_6
    const/16 v0, 0xb

    .local v0, minMatch:I
    move v6, v0

    .end local v0           #minMatch:I
    .restart local v6       #minMatch:I
    goto :goto_3

    .local v1, ia:I
    .restart local v2       #numNonDialableCharsInA:I
    .local v3, ib:I
    .local v4, matched:I
    .restart local v7       #skipCmp:Z
    .restart local v8       #numNonDialableCharsInB:I
    :cond_7
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, ca:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v9

    if-nez v9, :cond_12

    add-int/lit8 v1, v1, -0x1

    const/4 v7, 0x1

    add-int/lit8 v2, v2, 0x1

    move v9, v7

    .end local v7           #skipCmp:Z
    .local v9, skipCmp:Z
    move v7, v2

    .end local v2           #numNonDialableCharsInA:I
    .local v7, numNonDialableCharsInA:I
    move v2, v1

    .end local v1           #ia:I
    .local v2, ia:I
    :goto_6
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .local v1, cb:C
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v10

    if-nez v10, :cond_8

    add-int/lit8 v3, v3, -0x1

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    :cond_8
    if-nez v9, :cond_11

    if-eq v1, v0, :cond_9

    const/16 v9, 0x4e

    if-eq v0, v9, :cond_9

    .end local v9           #skipCmp:Z
    const/16 v0, 0x4e

    if-eq v1, v0, :cond_9

    .end local v0           #ca:C
    move v1, v3

    .end local v3           #ib:I
    .local v1, ib:I
    move v0, v2

    .end local v2           #ia:I
    .local v0, ia:I
    move v3, v8

    .end local v8           #numNonDialableCharsInB:I
    .local v3, numNonDialableCharsInB:I
    move v2, v7

    .end local v7           #numNonDialableCharsInA:I
    .local v2, numNonDialableCharsInA:I
    goto :goto_5

    .end local v0           #ia:I
    .local v1, cb:C
    .local v2, ia:I
    .local v3, ib:I
    .restart local v7       #numNonDialableCharsInA:I
    .restart local v8       #numNonDialableCharsInB:I
    :cond_9
    add-int/lit8 v0, v2, -0x1

    .end local v2           #ia:I
    .restart local v0       #ia:I
    add-int/lit8 v1, v3, -0x1

    .end local v3           #ib:I
    .local v1, ib:I
    add-int/lit8 v2, v4, 0x1

    .end local v4           #matched:I
    .local v2, matched:I
    :goto_7
    move v4, v2

    .end local v2           #matched:I
    .restart local v4       #matched:I
    move v3, v1

    .end local v1           #ib:I
    .restart local v3       #ib:I
    move v2, v7

    .end local v7           #numNonDialableCharsInA:I
    .local v2, numNonDialableCharsInA:I
    move v1, v0

    .end local v0           #ia:I
    .local v1, ia:I
    goto :goto_4

    .end local v8           #numNonDialableCharsInB:I
    .restart local v0       #ia:I
    .local v1, ib:I
    .local v3, numNonDialableCharsInB:I
    .local p0, effectiveALen:I
    .local p1, effectiveBLen:I
    :cond_a
    const/4 p0, 0x0

    move p1, v3

    .end local v3           #numNonDialableCharsInB:I
    .local p1, numNonDialableCharsInB:I
    move v0, p0

    move p0, v2

    .end local v2           #numNonDialableCharsInA:I
    .local p0, numNonDialableCharsInA:I
    goto/16 :goto_1

    .restart local v2       #numNonDialableCharsInA:I
    .restart local v3       #numNonDialableCharsInB:I
    .local p0, a:Ljava/lang/String;
    .local p1, b:Ljava/lang/String;
    :cond_b
    if-lt v4, v6, :cond_d

    if-ltz v0, :cond_c

    if-ltz v1, :cond_c

    if-ne v4, v5, :cond_d

    :cond_c
    const/4 p0, 0x1

    move p1, v3

    .end local v3           #numNonDialableCharsInB:I
    .local p1, numNonDialableCharsInB:I
    move v0, p0

    move p0, v2

    .end local v2           #numNonDialableCharsInA:I
    .local p0, numNonDialableCharsInA:I
    goto/16 :goto_1

    .restart local v2       #numNonDialableCharsInA:I
    .restart local v3       #numNonDialableCharsInB:I
    .local p0, a:Ljava/lang/String;
    .local p1, b:Ljava/lang/String;
    :cond_d
    add-int/lit8 v4, v0, 0x1

    invoke-static {p0, v4}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    .end local v4           #matched:I
    move-result v4

    if-eqz v4, :cond_e

    add-int/lit8 v4, v1, 0x1

    invoke-static {p1, v4}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_e

    const/4 p0, 0x1

    move p1, v3

    .end local v3           #numNonDialableCharsInB:I
    .local p1, numNonDialableCharsInB:I
    move v0, p0

    move p0, v2

    .end local v2           #numNonDialableCharsInA:I
    .local p0, numNonDialableCharsInA:I
    goto/16 :goto_1

    .restart local v2       #numNonDialableCharsInA:I
    .restart local v3       #numNonDialableCharsInB:I
    .local p0, a:Ljava/lang/String;
    .local p1, b:Ljava/lang/String;
    :cond_e
    add-int/lit8 v4, v0, 0x1

    invoke-static {p0, v4}, Landroid/telephony/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_f

    add-int/lit8 v4, v1, 0x1

    invoke-static {p1, v4}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 p0, 0x1

    move p1, v3

    .end local v3           #numNonDialableCharsInB:I
    .local p1, numNonDialableCharsInB:I
    move v0, p0

    move p0, v2

    .end local v2           #numNonDialableCharsInA:I
    .local p0, numNonDialableCharsInA:I
    goto/16 :goto_1

    .restart local v2       #numNonDialableCharsInA:I
    .restart local v3       #numNonDialableCharsInB:I
    .local p0, a:Ljava/lang/String;
    .local p1, b:Ljava/lang/String;
    :cond_f
    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Landroid/telephony/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    .end local v1           #ib:I
    move-result p1

    .end local p1           #b:Ljava/lang/String;
    if-eqz p1, :cond_10

    add-int/lit8 p1, v0, 0x1

    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result p0

    .end local p0           #a:Ljava/lang/String;
    if-eqz p0, :cond_10

    const/4 p0, 0x1

    move p1, v3

    .end local v3           #numNonDialableCharsInB:I
    .local p1, numNonDialableCharsInB:I
    move v0, p0

    move p0, v2

    .end local v2           #numNonDialableCharsInA:I
    .local p0, numNonDialableCharsInA:I
    goto/16 :goto_1

    .end local p0           #numNonDialableCharsInA:I
    .end local p1           #numNonDialableCharsInB:I
    .restart local v2       #numNonDialableCharsInA:I
    .restart local v3       #numNonDialableCharsInB:I
    :cond_10
    const/4 p0, 0x0

    move p1, v3

    .end local v3           #numNonDialableCharsInB:I
    .restart local p1       #numNonDialableCharsInB:I
    move v0, p0

    move p0, v2

    .end local v2           #numNonDialableCharsInA:I
    .restart local p0       #numNonDialableCharsInA:I
    goto/16 :goto_1

    .local v0, ca:C
    .local v1, cb:C
    .local v2, ia:I
    .local v3, ib:I
    .restart local v4       #matched:I
    .restart local v7       #numNonDialableCharsInA:I
    .restart local v8       #numNonDialableCharsInB:I
    .restart local v9       #skipCmp:Z
    .local p0, a:Ljava/lang/String;
    .local p1, b:Ljava/lang/String;
    :cond_11
    move v1, v3

    .end local v3           #ib:I
    .local v1, ib:I
    move v0, v2

    .end local v2           #ia:I
    .local v0, ia:I
    move v2, v4

    .end local v4           #matched:I
    .local v2, matched:I
    goto :goto_7

    .end local v9           #skipCmp:Z
    .local v0, ca:C
    .local v1, ia:I
    .local v2, numNonDialableCharsInA:I
    .restart local v3       #ib:I
    .restart local v4       #matched:I
    .local v7, skipCmp:Z
    :cond_12
    move v9, v7

    .end local v7           #skipCmp:Z
    .restart local v9       #skipCmp:Z
    move v7, v2

    .end local v2           #numNonDialableCharsInA:I
    .local v7, numNonDialableCharsInA:I
    move v2, v1

    .end local v1           #ia:I
    .local v2, ia:I
    goto/16 :goto_6

    .end local v0           #ca:C
    .end local v7           #numNonDialableCharsInA:I
    .end local v9           #skipCmp:Z
    .restart local v1       #ia:I
    .local v2, numNonDialableCharsInA:I
    :cond_13
    move v0, v1

    .end local v1           #ia:I
    .local v0, ia:I
    move v1, v3

    .end local v3           #ib:I
    .local v1, ib:I
    move v3, v8

    .end local v8           #numNonDialableCharsInB:I
    .local v3, numNonDialableCharsInB:I
    goto/16 :goto_5
.end method

.method public static compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 12
    .parameter "a"
    .parameter "b"
    .parameter "acceptInvalidCCCPrefix"

    .prologue
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    .end local p0
    .end local p1
    .end local p2
    :goto_0
    return p0

    .restart local p0
    .restart local p1
    .restart local p2
    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    const/4 p0, 0x0

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .local v3, forwardIndexA:I
    const/4 v4, 0x0

    .local v4, forwardIndexB:I
    invoke-static {p0, p2}, Landroid/telephony/PhoneNumberUtils;->tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    move-result-object v1

    .local v1, cccA:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    invoke-static {p1, p2}, Landroid/telephony/PhoneNumberUtils;->tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    move-result-object v2

    .local v2, cccB:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    const/4 v0, 0x0

    .local v0, bothHasCountryCallingCode:Z
    const/4 v5, 0x1

    .local v5, okToIgnorePrefix:Z
    const/4 v6, 0x0

    .local v6, trunkPrefixIsOmittedA:Z
    const/4 v7, 0x0

    .local v7, trunkPrefixIsOmittedB:Z
    if-eqz v1, :cond_8

    if-eqz v2, :cond_8

    iget v0, v1, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    .end local v0           #bothHasCountryCallingCode:Z
    iget v3, v2, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    .end local v3           #forwardIndexA:I
    if-eq v0, v3, :cond_4

    const/4 p0, 0x0

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    .end local v5           #okToIgnorePrefix:Z
    .local v3, okToIgnorePrefix:Z
    const/4 v0, 0x1

    .restart local v0       #bothHasCountryCallingCode:Z
    iget v1, v1, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .local v1, forwardIndexA:I
    iget v2, v2, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .end local v4           #forwardIndexB:I
    .local v2, forwardIndexB:I
    move v10, v7

    .end local v7           #trunkPrefixIsOmittedB:Z
    .local v10, trunkPrefixIsOmittedB:Z
    move v9, v6

    .end local v6           #trunkPrefixIsOmittedA:Z
    .local v9, trunkPrefixIsOmittedA:Z
    move v5, v1

    .end local v1           #forwardIndexA:I
    .local v5, forwardIndexA:I
    move v6, v2

    .end local v2           #forwardIndexB:I
    .local v6, forwardIndexB:I
    move v7, v3

    .end local v3           #okToIgnorePrefix:Z
    .local v7, okToIgnorePrefix:Z
    move v2, v0

    .end local v0           #bothHasCountryCallingCode:Z
    .local v2, bothHasCountryCallingCode:Z
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, backwardIndexA:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    .local v1, backwardIndexB:I
    :cond_5
    :goto_2
    if-lt v0, v5, :cond_d

    if-lt v1, v6, :cond_d

    const/4 v8, 0x0

    .local v8, skip_compare:Z
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .local v3, chA:C
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .local v4, chB:C
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isSeparator(C)Z

    move-result v11

    if-eqz v11, :cond_6

    add-int/lit8 v0, v0, -0x1

    const/4 v8, 0x1

    :cond_6
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isSeparator(C)Z

    move-result v11

    if-eqz v11, :cond_7

    add-int/lit8 v1, v1, -0x1

    const/4 v8, 0x1

    :cond_7
    if-nez v8, :cond_5

    if-eq v3, v4, :cond_c

    const/4 p0, 0x0

    goto :goto_0

    .end local v8           #skip_compare:Z
    .end local v9           #trunkPrefixIsOmittedA:Z
    .end local v10           #trunkPrefixIsOmittedB:Z
    .local v0, bothHasCountryCallingCode:Z
    .local v1, cccA:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .local v2, cccB:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .local v3, forwardIndexA:I
    .local v4, forwardIndexB:I
    .local v5, okToIgnorePrefix:Z
    .local v6, trunkPrefixIsOmittedA:Z
    .local v7, trunkPrefixIsOmittedB:Z
    :cond_8
    if-nez v1, :cond_9

    if-nez v2, :cond_9

    const/4 v1, 0x0

    .end local v5           #okToIgnorePrefix:Z
    .local v1, okToIgnorePrefix:Z
    move v10, v7

    .end local v7           #trunkPrefixIsOmittedB:Z
    .restart local v10       #trunkPrefixIsOmittedB:Z
    move v9, v6

    .end local v6           #trunkPrefixIsOmittedA:Z
    .restart local v9       #trunkPrefixIsOmittedA:Z
    move v2, v0

    .end local v0           #bothHasCountryCallingCode:Z
    .local v2, bothHasCountryCallingCode:Z
    move v5, v3

    .end local v3           #forwardIndexA:I
    .local v5, forwardIndexA:I
    move v6, v4

    .end local v4           #forwardIndexB:I
    .local v6, forwardIndexB:I
    move v7, v1

    .end local v1           #okToIgnorePrefix:Z
    .local v7, okToIgnorePrefix:Z
    goto :goto_1

    .end local v9           #trunkPrefixIsOmittedA:Z
    .end local v10           #trunkPrefixIsOmittedB:Z
    .restart local v0       #bothHasCountryCallingCode:Z
    .local v1, cccA:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .local v2, cccB:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .restart local v3       #forwardIndexA:I
    .restart local v4       #forwardIndexB:I
    .local v5, okToIgnorePrefix:Z
    .local v6, trunkPrefixIsOmittedA:Z
    .local v7, trunkPrefixIsOmittedB:Z
    :cond_9
    if-eqz v1, :cond_a

    iget v1, v1, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .end local v3           #forwardIndexA:I
    .local v1, forwardIndexA:I
    move v3, v6

    .end local v6           #trunkPrefixIsOmittedA:Z
    .local v3, trunkPrefixIsOmittedA:Z
    :goto_3
    if-eqz v2, :cond_b

    iget v2, v2, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .end local v4           #forwardIndexB:I
    .local v2, forwardIndexB:I
    move v10, v7

    .end local v7           #trunkPrefixIsOmittedB:Z
    .restart local v10       #trunkPrefixIsOmittedB:Z
    move v9, v3

    .end local v3           #trunkPrefixIsOmittedA:Z
    .restart local v9       #trunkPrefixIsOmittedA:Z
    move v6, v2

    .end local v2           #forwardIndexB:I
    .local v6, forwardIndexB:I
    move v2, v0

    .end local v0           #bothHasCountryCallingCode:Z
    .local v2, bothHasCountryCallingCode:Z
    move v7, v5

    .end local v5           #okToIgnorePrefix:Z
    .local v7, okToIgnorePrefix:Z
    move v5, v1

    .end local v1           #forwardIndexA:I
    .local v5, forwardIndexA:I
    goto :goto_1

    .end local v9           #trunkPrefixIsOmittedA:Z
    .end local v10           #trunkPrefixIsOmittedB:Z
    .restart local v0       #bothHasCountryCallingCode:Z
    .local v1, cccA:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .local v2, cccB:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .local v3, forwardIndexA:I
    .restart local v4       #forwardIndexB:I
    .local v5, okToIgnorePrefix:Z
    .local v6, trunkPrefixIsOmittedA:Z
    .local v7, trunkPrefixIsOmittedB:Z
    :cond_a
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/telephony/PhoneNumberUtils;->tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    .end local v1           #cccA:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    move-result v1

    .local v1, tmp:I
    if-ltz v1, :cond_1f

    move v1, v1

    .end local v3           #forwardIndexA:I
    .local v1, forwardIndexA:I
    const/4 v3, 0x1

    .end local v6           #trunkPrefixIsOmittedA:Z
    .local v3, trunkPrefixIsOmittedA:Z
    goto :goto_3

    :cond_b
    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/telephony/PhoneNumberUtils;->tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    .end local v2           #cccB:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    move-result v2

    .local v2, tmp:I
    if-ltz v2, :cond_1e

    move v2, v2

    .end local v4           #forwardIndexB:I
    .local v2, forwardIndexB:I
    const/4 v4, 0x1

    .end local v7           #trunkPrefixIsOmittedB:Z
    .local v4, trunkPrefixIsOmittedB:Z
    move v10, v4

    .end local v4           #trunkPrefixIsOmittedB:Z
    .restart local v10       #trunkPrefixIsOmittedB:Z
    move v9, v3

    .end local v3           #trunkPrefixIsOmittedA:Z
    .restart local v9       #trunkPrefixIsOmittedA:Z
    move v7, v5

    .end local v5           #okToIgnorePrefix:Z
    .local v7, okToIgnorePrefix:Z
    move v6, v2

    .end local v2           #forwardIndexB:I
    .local v6, forwardIndexB:I
    move v2, v0

    .end local v0           #bothHasCountryCallingCode:Z
    .local v2, bothHasCountryCallingCode:Z
    move v5, v1

    .end local v1           #forwardIndexA:I
    .local v5, forwardIndexA:I
    goto :goto_1

    .local v0, backwardIndexA:I
    .local v1, backwardIndexB:I
    .local v3, chA:C
    .local v4, chB:C
    .restart local v8       #skip_compare:Z
    :cond_c
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .end local v3           #chA:C
    .end local v4           #chB:C
    .end local v8           #skip_compare:Z
    :cond_d
    if-eqz v7, :cond_15

    if-eqz v9, :cond_e

    if-le v5, v0, :cond_f

    :cond_e
    invoke-static {p0, v5, v0}, Landroid/telephony/PhoneNumberUtils;->checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    move-result v2

    .end local v2           #bothHasCountryCallingCode:Z
    if-nez v2, :cond_11

    :cond_f
    if-eqz p2, :cond_10

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    .end local p2
    move-result p0

    goto/16 :goto_0

    .restart local p2
    :cond_10
    const/4 p0, 0x0

    goto/16 :goto_0

    :cond_11
    if-eqz v10, :cond_12

    if-le v6, v1, :cond_13

    :cond_12
    invoke-static {p1, v5, v1}, Landroid/telephony/PhoneNumberUtils;->checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_1d

    :cond_13
    if-eqz p2, :cond_14

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    .end local p2
    move-result p0

    goto/16 :goto_0

    .restart local p2
    :cond_14
    const/4 p0, 0x0

    goto/16 :goto_0

    .restart local v2       #bothHasCountryCallingCode:Z
    :cond_15
    if-nez v2, :cond_16

    const/4 p2, 0x1

    .local p2, maybeNamp:Z
    :goto_4
    move v2, p2

    .local v2, maybeNamp:I
    move p2, v0

    .end local v0           #backwardIndexA:I
    .local p2, backwardIndexA:I
    :goto_5
    if-lt p2, v5, :cond_1c

    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, chA:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v3

    if-eqz v3, :cond_1b

    if-eqz v2, :cond_17

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v0

    .end local v0           #chA:C
    const/4 v2, 0x1

    if-ne v0, v2, :cond_17

    .end local v2           #maybeNamp:I
    const/4 v0, 0x0

    :goto_6
    add-int/lit8 p2, p2, -0x1

    move v2, v0

    .restart local v2       #maybeNamp:I
    goto :goto_5

    .local v0, backwardIndexA:I
    .local v2, bothHasCountryCallingCode:Z
    .local p2, acceptInvalidCCCPrefix:Z
    :cond_16
    const/4 p2, 0x0

    goto :goto_4

    .end local v0           #backwardIndexA:I
    .end local v2           #bothHasCountryCallingCode:Z
    .local p2, backwardIndexA:I
    :cond_17
    const/4 p0, 0x0

    goto/16 :goto_0

    .local v1, maybeNamp:I
    .local p0, backwardIndexB:I
    :goto_7
    if-lt p0, v6, :cond_19

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, chB:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-eqz v2, :cond_1a

    if-eqz v1, :cond_18

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v0

    .end local v0           #chB:C
    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .end local v1           #maybeNamp:I
    const/4 v0, 0x0

    :goto_8
    add-int/lit8 p0, p0, -0x1

    move v1, v0

    .restart local v1       #maybeNamp:I
    goto :goto_7

    .end local v1           #maybeNamp:I
    :cond_18
    const/4 p0, 0x0

    goto/16 :goto_0

    .restart local v1       #maybeNamp:I
    :cond_19
    move p1, p0

    .end local p0           #backwardIndexB:I
    .local p1, backwardIndexB:I
    move p0, p2

    .end local v1           #maybeNamp:I
    .end local p2           #backwardIndexA:I
    .local p0, backwardIndexA:I
    :goto_9
    const/4 p0, 0x1

    goto/16 :goto_0

    .restart local v0       #chB:C
    .restart local v1       #maybeNamp:I
    .local p0, backwardIndexB:I
    .local p1, b:Ljava/lang/String;
    .restart local p2       #backwardIndexA:I
    :cond_1a
    move v0, v1

    .end local v1           #maybeNamp:I
    .local v0, maybeNamp:I
    goto :goto_8

    .local v0, chA:C
    .local v1, backwardIndexB:I
    .local v2, maybeNamp:I
    .local p0, a:Ljava/lang/String;
    :cond_1b
    move v0, v2

    .end local v2           #maybeNamp:I
    .local v0, maybeNamp:I
    goto :goto_6

    .end local v0           #maybeNamp:I
    .restart local v2       #maybeNamp:I
    :cond_1c
    move p0, v1

    .end local v1           #backwardIndexB:I
    .local p0, backwardIndexB:I
    move v1, v2

    .end local v2           #maybeNamp:I
    .local v1, maybeNamp:I
    goto :goto_7

    .local v0, backwardIndexA:I
    .local v1, backwardIndexB:I
    .local p0, a:Ljava/lang/String;
    .local p2, acceptInvalidCCCPrefix:Z
    :cond_1d
    move p1, v1

    .end local v1           #backwardIndexB:I
    .local p1, backwardIndexB:I
    move p0, v0

    .end local v0           #backwardIndexA:I
    .local p0, backwardIndexA:I
    goto :goto_9

    .end local v6           #forwardIndexB:I
    .end local v9           #trunkPrefixIsOmittedA:Z
    .end local v10           #trunkPrefixIsOmittedB:Z
    .local v0, bothHasCountryCallingCode:Z
    .local v1, forwardIndexA:I
    .local v2, tmp:I
    .local v3, trunkPrefixIsOmittedA:Z
    .local v4, forwardIndexB:I
    .local v5, okToIgnorePrefix:Z
    .local v7, trunkPrefixIsOmittedB:Z
    .local p0, a:Ljava/lang/String;
    .local p1, b:Ljava/lang/String;
    :cond_1e
    move v10, v7

    .end local v7           #trunkPrefixIsOmittedB:Z
    .restart local v10       #trunkPrefixIsOmittedB:Z
    move v9, v3

    .end local v3           #trunkPrefixIsOmittedA:Z
    .restart local v9       #trunkPrefixIsOmittedA:Z
    move v2, v0

    .end local v0           #bothHasCountryCallingCode:Z
    .local v2, bothHasCountryCallingCode:Z
    move v6, v4

    .end local v4           #forwardIndexB:I
    .restart local v6       #forwardIndexB:I
    move v7, v5

    .end local v5           #okToIgnorePrefix:Z
    .local v7, okToIgnorePrefix:Z
    move v5, v1

    .end local v1           #forwardIndexA:I
    .local v5, forwardIndexA:I
    goto/16 :goto_1

    .end local v9           #trunkPrefixIsOmittedA:Z
    .end local v10           #trunkPrefixIsOmittedB:Z
    .restart local v0       #bothHasCountryCallingCode:Z
    .local v1, tmp:I
    .local v2, cccB:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .local v3, forwardIndexA:I
    .restart local v4       #forwardIndexB:I
    .local v5, okToIgnorePrefix:Z
    .local v6, trunkPrefixIsOmittedA:Z
    .local v7, trunkPrefixIsOmittedB:Z
    :cond_1f
    move v1, v3

    .end local v3           #forwardIndexA:I
    .local v1, forwardIndexA:I
    move v3, v6

    .end local v6           #trunkPrefixIsOmittedA:Z
    .local v3, trunkPrefixIsOmittedA:Z
    goto/16 :goto_3
.end method

.method public static convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "input"

    .prologue
    if-nez p0, :cond_0

    move-object v4, p0

    :goto_0
    return-object v4

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, len:I
    if-nez v2, :cond_1

    move-object v4, p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .local v3, out:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-char v0, v3, v1

    .local v0, c:C
    sget-object v4, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    int-to-char v4, v4

    aput-char v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #c:C
    :cond_2
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "phoneNumber"

    .prologue
    if-nez p0, :cond_0

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, len:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v4, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, firstCharAdded:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x2b

    if-ne v0, v5, :cond_1

    if-nez v1, :cond_3

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .end local v0           #c:C
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "phoneNumber"

    .prologue
    if-nez p0, :cond_0

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, len:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v4, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, haveSeenPlus:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_5

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, c:C
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_3

    if-eqz v1, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :cond_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .end local v0           #c:C
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "phoneNumber"

    .prologue
    if-nez p0, :cond_0

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .local v2, ret:Ljava/lang/StringBuilder;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v4

    .local v4, trimIndex:I
    add-int/lit8 v1, v4, 0x1

    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, s:I
    :goto_1
    if-ge v1, v3, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #c:C
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private static findDialableIndexFromPostDialStr(Ljava/lang/String;)I
    .locals 3
    .parameter "postDialStr"

    .prologue
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    .end local v0           #c:C
    :goto_1
    return v2

    .restart local v0       #c:C
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #c:C
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public static formatJapaneseNumber(Landroid/text/Editable;)V
    .locals 0
    .parameter "text"

    .prologue
    invoke-static {p0}, Landroid/telephony/JapanesePhoneNumberFormatter;->format(Landroid/text/Editable;)V

    return-void
.end method

.method public static formatNanpNumber(Landroid/text/Editable;)V
    .locals 8
    .parameter "text"

    .prologue
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    .local v0, length:I
    const-string v1, "+1-nnn-nnn-nnnn"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    move p0, v0

    .end local v0           #length:I
    .local p0, length:I
    :goto_0
    return-void

    .restart local v0       #length:I
    .local p0, text:Landroid/text/Editable;
    :cond_0
    const/4 v1, 0x5

    if-gt v0, v1, :cond_1

    move p0, v0

    .end local v0           #length:I
    .local p0, length:I
    goto :goto_0

    .restart local v0       #length:I
    .local p0, text:Landroid/text/Editable;
    :cond_1
    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    .local v6, saved:Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, p:I
    :goto_1
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-interface {p0, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_2

    add-int/lit8 v1, v0, 0x1

    invoke-interface {p0, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v3

    .local v3, length:I
    const/4 v0, 0x3

    new-array v1, v0, [I

    .end local v0           #p:I
    .local v1, dashPositions:[I
    const/4 v2, 0x0

    .local v2, numDashes:I
    const/4 v5, 0x1

    .local v5, state:I
    const/4 v4, 0x0

    .local v4, numDigits:I
    const/4 v0, 0x0

    .local v0, i:I
    move v7, v5

    .end local v5           #state:I
    .local v7, state:I
    move v5, v4

    .end local v4           #numDigits:I
    .local v5, numDigits:I
    move v4, v2

    .end local v2           #numDashes:I
    .local v4, numDashes:I
    move v2, v0

    .end local v0           #i:I
    .local v2, i:I
    :goto_2
    if-ge v2, v3, :cond_a

    invoke-interface {p0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .local v0, c:C
    packed-switch v0, :pswitch_data_0

    :cond_4
    :pswitch_0
    const/4 v0, 0x0

    invoke-interface {p0, v0, v3, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .end local v0           #c:C
    move p0, v3

    .end local v3           #length:I
    .local p0, length:I
    goto :goto_0

    .restart local v0       #c:C
    .restart local v3       #length:I
    .local p0, text:Landroid/text/Editable;
    :pswitch_1
    if-eqz v5, :cond_5

    const/4 v0, 0x2

    if-ne v7, v0, :cond_6

    .end local v0           #c:C
    :cond_5
    const/4 v0, 0x3

    .end local v7           #state:I
    .local v0, state:I
    move v7, v0

    .end local v0           #state:I
    .restart local v7       #state:I
    :goto_3
    add-int/lit8 v0, v2, 0x1

    .end local v2           #i:I
    .local v0, i:I
    move v2, v0

    .end local v0           #i:I
    .restart local v2       #i:I
    goto :goto_2

    :cond_6
    :pswitch_2
    const/4 v0, 0x2

    if-ne v7, v0, :cond_7

    const/4 v0, 0x0

    invoke-interface {p0, v0, v3, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    move p0, v3

    .end local v3           #length:I
    .local p0, length:I
    goto :goto_0

    .restart local v3       #length:I
    .local p0, text:Landroid/text/Editable;
    :cond_7
    const/4 v0, 0x3

    if-ne v7, v0, :cond_8

    add-int/lit8 v0, v4, 0x1

    .end local v4           #numDashes:I
    .local v0, numDashes:I
    aput v2, v1, v4

    :goto_4
    const/4 v7, 0x1

    add-int/lit8 v4, v5, 0x1

    .end local v5           #numDigits:I
    .local v4, numDigits:I
    move v5, v4

    .end local v4           #numDigits:I
    .restart local v5       #numDigits:I
    move v4, v0

    .end local v0           #numDashes:I
    .local v4, numDashes:I
    goto :goto_3

    :cond_8
    const/4 v0, 0x4

    if-eq v7, v0, :cond_e

    const/4 v0, 0x3

    if-eq v5, v0, :cond_9

    const/4 v0, 0x6

    if-ne v5, v0, :cond_e

    :cond_9
    add-int/lit8 v0, v4, 0x1

    .end local v4           #numDashes:I
    .restart local v0       #numDashes:I
    aput v2, v1, v4

    goto :goto_4

    .local v0, c:C
    .restart local v4       #numDashes:I
    :pswitch_3
    const/4 v0, 0x4

    .end local v7           #state:I
    .local v0, state:I
    move v7, v0

    .end local v0           #state:I
    .restart local v7       #state:I
    goto :goto_3

    .local v0, c:C
    :pswitch_4
    if-nez v2, :cond_4

    const/4 v0, 0x2

    .end local v7           #state:I
    .local v0, state:I
    move v7, v0

    .end local v0           #state:I
    .restart local v7       #state:I
    goto :goto_3

    :cond_a
    const/4 v0, 0x7

    if-ne v5, v0, :cond_d

    add-int/lit8 v0, v4, -0x1

    .end local v4           #numDashes:I
    .local v0, numDashes:I
    move v2, v0

    .end local v0           #numDashes:I
    .local v2, numDashes:I
    :goto_5
    const/4 v0, 0x0

    .end local v5           #numDigits:I
    .end local v6           #saved:Ljava/lang/CharSequence;
    .local v0, i:I
    :goto_6
    if-ge v0, v2, :cond_b

    aget v4, v1, v0

    .local v4, pos:I
    add-int v5, v4, v0

    add-int/2addr v4, v0

    const-string v6, "-"

    .end local v4           #pos:I
    invoke-interface {p0, v5, v4, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_b
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    .end local v1           #dashPositions:[I
    .end local v2           #numDashes:I
    .local v0, len:I
    :goto_7
    if-lez v0, :cond_c

    const/4 v1, 0x1

    sub-int v1, v0, v1

    invoke-interface {p0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_c

    const/4 v1, 0x1

    sub-int v1, v0, v1

    invoke-interface {p0, v1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_c
    move p0, v3

    .end local v3           #length:I
    .local p0, length:I
    goto/16 :goto_0

    .end local v0           #len:I
    .restart local v1       #dashPositions:[I
    .local v2, i:I
    .restart local v3       #length:I
    .local v4, numDashes:I
    .restart local v5       #numDigits:I
    .restart local v6       #saved:Ljava/lang/CharSequence;
    .local p0, text:Landroid/text/Editable;
    :cond_d
    move v2, v4

    .end local v4           #numDashes:I
    .local v2, numDashes:I
    goto :goto_5

    .local v2, i:I
    .restart local v4       #numDashes:I
    :cond_e
    move v0, v4

    .end local v4           #numDashes:I
    .local v0, numDashes:I
    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static formatNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "source"

    .prologue
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .local v0, text:Landroid/text/SpannableStringBuilder;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeForLocale(Ljava/util/Locale;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "source"
    .parameter "defaultFormattingType"

    .prologue
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .local v0, text:Landroid/text/SpannableStringBuilder;
    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatNumber(Landroid/text/Editable;I)V
    .locals 6
    .parameter "text"
    .parameter "defaultFormattingType"

    .prologue
    const/16 v5, 0x31

    const/4 v4, 0x2

    const/4 v3, 0x1

    move v0, p1

    .local v0, formatType:I
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-le v1, v4, :cond_0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_0

    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_2

    const/4 v0, 0x1

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x38

    if-ne v1, v2, :cond_1

    invoke-interface {p0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :pswitch_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatNanpNumber(Landroid/text/Editable;)V

    goto :goto_1

    :pswitch_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatJapaneseNumber(Landroid/text/Editable;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getActiveExitCodeS()[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "00"

    aput-object v2, v0, v1

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getActiveExitCodeS([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getActiveExitCodeS([Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .parameter "defaultExitCodeS"

    .prologue
    const/4 v6, 0x3

    const-string v2, ""

    .local v2, mcc:Ljava/lang/String;
    const-string v3, ""

    .local v3, mnc:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    .local v4, netOperator:Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x3

    .local v0, MCC_LEN:I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v6, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .end local v0           #MCC_LEN:I
    :cond_0
    const-string v5, "PhoneNumberUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "netOperator=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\", mcc=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\", mnc=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .local v1, exitCode:[Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->trySearchingExitCodeByKey(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v5, v1

    :goto_0
    return-object v5

    :cond_1
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->trySearchingExitCodeByKey(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v5, v1

    goto :goto_0

    :cond_2
    move-object v5, p0

    goto :goto_0
.end method

.method private static getDefaultIdp()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .local v0, ps:Ljava/lang/String;
    const-string v1, "ro.cdma.idpstring"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "011"

    :cond_0
    return-object v0
.end method

.method public static getFormatTypeForLocale(Ljava/util/Locale;)I
    .locals 2
    .parameter "locale"

    .prologue
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .local v0, country:Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getFormatTypeFromCountryCode(Ljava/lang/String;)I
    .locals 6
    .parameter "country"

    .prologue
    const/4 v5, 0x0

    sget-object v3, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    array-length v1, v3

    .local v1, length:I
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .local v2, locale:Ljava/util/Locale;
    const-string v3, "us"

    invoke-virtual {v3, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "es"

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    move v3, v5

    :goto_0
    return v3

    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    sget-object v3, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string v3, "jp"

    invoke-virtual {v3, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x2

    goto :goto_0

    :cond_3
    move v3, v5

    goto :goto_0
.end method

.method public static getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .parameter "intent"
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .local v8, number:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    .local v10, scheme:Ljava/lang/String;
    const-string v0, "tel"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sip"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "voicemail"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCompleteVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    move-object v0, v3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .local v11, type:Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, phoneColumn:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    .local v6, authority:Ljava/lang/String;
    const-string v0, "contacts"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v9, "number"

    :cond_4
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v9, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_6

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v0, v8

    goto :goto_0

    .end local v7           #c:Landroid/database/Cursor;
    :cond_7
    const-string v0, "com.android.contacts"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v9, "data1"

    goto :goto_1

    .restart local v7       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getStrippedReversed(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "phoneNumber"

    .prologue
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, np:Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static indexOfLastNetworkChar(Ljava/lang/String;)I
    .locals 6
    .parameter "a"

    .prologue
    const/4 v5, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, origLength:I
    const/16 v4, 0x2c

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .local v1, pIndex:I
    const/16 v4, 0x3b

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .local v3, wIndex:I
    invoke-static {v1, v3}, Landroid/telephony/PhoneNumberUtils;->minPositive(II)I

    move-result v2

    .local v2, trimIndex:I
    if-gez v2, :cond_0

    sub-int v4, v0, v5

    :goto_0
    return v4

    :cond_0
    sub-int v4, v2, v5

    goto :goto_0
.end method

.method private static initMapOfMccMnc2ExitCodes()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "00"

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "262"

    aput-object v1, v0, v3

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "00"

    aput-object v5, v1, v3

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->putItemMccMnc2ExitCode([Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "404"

    aput-object v1, v0, v3

    const-string v1, "405"

    aput-object v1, v0, v4

    const-string v1, "406"

    aput-object v1, v0, v6

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "00"

    aput-object v5, v1, v3

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->putItemMccMnc2ExitCode([Ljava/lang/String;[Ljava/lang/String;)V

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "235"

    aput-object v1, v0, v3

    const-string v1, "234"

    aput-object v1, v0, v4

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "00"

    aput-object v5, v1, v3

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->putItemMccMnc2ExitCode([Ljava/lang/String;[Ljava/lang/String;)V

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "454"

    aput-object v1, v0, v3

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "001"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->putItemMccMnc2ExitCode([Ljava/lang/String;[Ljava/lang/String;)V

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "505"

    aput-object v1, v0, v3

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "0011"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->putItemMccMnc2ExitCode([Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private static internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V
    .locals 5
    .parameter "sb"
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"

    .prologue
    move v2, p2

    .local v2, i:I
    :goto_0
    add-int v3, p3, p2

    if-ge v2, v3, :cond_0

    aget-byte v3, p1, v2

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->bcdToChar(B)C

    move-result v1

    .local v1, c:C
    if-nez v1, :cond_1

    .end local v1           #c:C
    :cond_0
    return-void

    .restart local v1       #c:C
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v3, p1, v2

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    int-to-byte v0, v3

    .local v0, b:B
    const/16 v3, 0xf

    if-ne v0, v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    add-int v4, p3, p2

    if-eq v3, v4, :cond_0

    :cond_2
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->bcdToChar(B)C

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .parameter "np"
    .parameter "numDigits"

    .prologue
    if-nez p0, :cond_0

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v3, ret:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, length:I
    const/4 v5, 0x1

    sub-int v1, v2, v5

    .local v1, i:I
    move v4, v2

    .local v4, s:I
    :goto_1
    if-ltz v1, :cond_1

    sub-int v5, v4, v1

    if-gt v5, p1, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, c:C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .end local v0           #c:C
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static final is12Key(C)Z
    .locals 1
    .parameter "c"

    .prologue
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isCountryCallingCode(I)Z
    .locals 1
    .parameter "countryCallingCodeCandidate"

    .prologue
    if-lez p0, :cond_0

    sget v0, Landroid/telephony/PhoneNumberUtils;->CCC_LENGTH:I

    if-ge p0, v0, :cond_0

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTLY_CALLING_CALL:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDANNumber(Ljava/lang/String;)Z
    .locals 8
    .parameter "number"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez p0, :cond_0

    move v5, v6

    :goto_0
    return v5

    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v5, "ro.mot.ril.danlist"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, numbers:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .local v1, emergencyNum:Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v7

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1           #emergencyNum:Ljava/lang/String;
    :cond_2
    move v5, v6

    goto :goto_0

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_3
    const-string v5, "611"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "411"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    move v5, v7

    goto :goto_0

    :cond_5
    move v5, v6

    goto :goto_0
.end method

.method public static final isDialable(C)Z
    .locals 1
    .parameter "c"

    .prologue
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4e

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isDialable(Ljava/lang/String;)Z
    .locals 3
    .parameter "address"

    .prologue
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static isEmergencyNumber(Ljava/lang/String;)Z
    .locals 8
    .parameter "number"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez p0, :cond_0

    move v5, v6

    :goto_0
    return v5

    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v5, "ro.ril.ecclist"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, numbers:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "ril.ecclist"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .local v1, emergencyNum:Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v7

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1           #emergencyNum:Ljava/lang/String;
    :cond_3
    move v5, v6

    goto :goto_0

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_4
    const-string v5, "112"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "911"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    move v5, v7

    goto :goto_0

    :cond_6
    move v5, v6

    goto :goto_0
.end method

.method public static isGlobalPhoneNumber(Ljava/lang/String;)Z
    .locals 2
    .parameter "phoneNumber"

    .prologue
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .local v0, match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0
.end method

.method public static isISODigit(C)Z
    .locals 1
    .parameter "c"

    .prologue
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNanp(Ljava/lang/String;)Z
    .locals 5
    .parameter "dialStr"

    .prologue
    const/16 v4, 0xa

    const/4 v2, 0x0

    .local v2, retVal:Z
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isTwoToNine(C)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isTwoToNine(C)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x0

    .end local v0           #c:C
    .end local v1           #i:I
    :cond_0
    :goto_1
    return v2

    .restart local v0       #c:C
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #c:C
    .end local v1           #i:I
    :cond_2
    const-string v3, "isNanp: null dialStr passed in"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static final isNonSeparator(C)Z
    .locals 1
    .parameter "c"

    .prologue
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2c

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNonSeparator(Ljava/lang/String;)Z
    .locals 3
    .parameter "address"

    .prologue
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private static isOneNanp(Ljava/lang/String;)Z
    .locals 4
    .parameter "dialStr"

    .prologue
    const/4 v1, 0x0

    .local v1, retVal:Z
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .local v0, newDialStr:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNanp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .end local v0           #newDialStr:Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "isOneNanp: null dialStr passed in"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final isReallyDialable(C)Z
    .locals 1
    .parameter "c"

    .prologue
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSeparator(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1

    const/16 v0, 0x5a

    if-le p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isStartsPostDial(C)Z
    .locals 1
    .parameter "c"

    .prologue
    const/16 v0, 0x2c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3b

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isTwoToNine(C)Z
    .locals 1
    .parameter "c"

    .prologue
    const/16 v0, 0x32

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUriNumber(Ljava/lang/String;)Z
    .locals 1
    .parameter "number"

    .prologue
    if-eqz p0, :cond_1

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "%40"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVoiceMailNumber(Ljava/lang/String;)Z
    .locals 4
    .parameter "number"

    .prologue
    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, vmNumber:Ljava/lang/String;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .end local v1           #vmNumber:Ljava/lang/String;
    :goto_0
    return v2

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, ex:Ljava/lang/SecurityException;
    move v2, v3

    goto :goto_0

    .end local v0           #ex:Ljava/lang/SecurityException;
    .restart local v1       #vmNumber:Ljava/lang/String;
    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public static isWellFormedSmsAddress(Ljava/lang/String;)Z
    .locals 2
    .parameter "address"

    .prologue
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, networkPortion:Ljava/lang/String;
    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    const-string v0, "PhoneNumberUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static matchIntlPrefix(Ljava/lang/String;I)Z
    .locals 8
    .parameter "a"
    .parameter "len"

    .prologue
    const/16 v7, 0x31

    const/16 v6, 0x30

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .local v2, state:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_6

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, c:C
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .end local v0           #c:C
    :goto_1
    return v3

    .restart local v0       #c:C
    :pswitch_1
    const/16 v3, 0x2b

    if-ne v0, v3, :cond_1

    const/4 v2, 0x1

    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ne v0, v6, :cond_2

    const/4 v2, 0x2

    goto :goto_2

    :cond_2
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_1

    :pswitch_2
    if-ne v0, v6, :cond_3

    const/4 v2, 0x3

    goto :goto_2

    :cond_3
    if-ne v0, v7, :cond_4

    const/4 v2, 0x4

    goto :goto_2

    :cond_4
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_1

    :pswitch_3
    if-ne v0, v7, :cond_5

    const/4 v2, 0x5

    goto :goto_2

    :cond_5
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_1

    .end local v0           #c:C
    :cond_6
    if-eq v2, v5, :cond_7

    const/4 v3, 0x3

    if-eq v2, v3, :cond_7

    const/4 v3, 0x5

    if-ne v2, v3, :cond_8

    :cond_7
    move v3, v5

    goto :goto_1

    :cond_8
    move v3, v4

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static matchIntlPrefixAndCC(Ljava/lang/String;I)Z
    .locals 7
    .parameter "a"
    .parameter "len"

    .prologue
    const/16 v6, 0x31

    const/16 v5, 0x30

    const/4 v4, 0x0

    const/4 v2, 0x0

    .local v2, state:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_8

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, c:C
    packed-switch v2, :pswitch_data_0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .end local v0           #c:C
    :goto_1
    return v3

    .restart local v0       #c:C
    :pswitch_0
    const/16 v3, 0x2b

    if-ne v0, v3, :cond_1

    const/4 v2, 0x1

    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ne v0, v5, :cond_2

    const/4 v2, 0x2

    goto :goto_2

    :cond_2
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_1

    :pswitch_1
    if-ne v0, v5, :cond_3

    const/4 v2, 0x3

    goto :goto_2

    :cond_3
    if-ne v0, v6, :cond_4

    const/4 v2, 0x4

    goto :goto_2

    :cond_4
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_1

    :pswitch_2
    if-ne v0, v6, :cond_5

    const/4 v2, 0x5

    goto :goto_2

    :cond_5
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_1

    :pswitch_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v2, 0x6

    goto :goto_2

    :cond_6
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_1

    :pswitch_4
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v3

    if-eqz v3, :cond_7

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_1

    .end local v0           #c:C
    :cond_8
    const/4 v3, 0x6

    if-eq v2, v3, :cond_9

    const/4 v3, 0x7

    if-eq v2, v3, :cond_9

    const/16 v3, 0x8

    if-ne v2, v3, :cond_a

    :cond_9
    const/4 v3, 0x1

    goto :goto_1

    :cond_a
    move v3, v4

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private static matchTrunkPrefix(Ljava/lang/String;I)Z
    .locals 4
    .parameter "a"
    .parameter "len"

    .prologue
    const/4 v1, 0x0

    .local v1, found:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p1, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, c:C
    const/16 v3, 0x30

    if-ne v0, v3, :cond_1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    .end local v0           #c:C
    :goto_1
    return v3

    :cond_2
    move v3, v1

    goto :goto_1
.end method

.method private static minPositive(II)I
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    if-ltz p0, :cond_1

    if-ltz p1, :cond_1

    if-ge p0, p1, :cond_0

    move v0, p0

    :goto_0
    return v0

    :cond_0
    move v0, p1

    goto :goto_0

    :cond_1
    if-ltz p0, :cond_2

    move v0, p0

    goto :goto_0

    :cond_2
    if-ltz p1, :cond_3

    move v0, p1

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static networkPortionToCalledPartyBCD(Ljava/lang/String;)[B
    .locals 2
    .parameter "s"

    .prologue
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, networkPortion:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1
.end method

.method public static networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B
    .locals 2
    .parameter "s"

    .prologue
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, networkPortion:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1
.end method

.method public static networkPortionToCalledPartyBCDwithUsPrefix(Ljava/lang/String;)[B
    .locals 15
    .parameter "s"

    .prologue
    const/4 v13, 0x7

    const/4 v12, 0x1

    const/4 v10, 0x0

    const-string v14, "+011"

    const-string v11, "+1"

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, np:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v13, :cond_0

    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getActiveExitCodeS()[Ljava/lang/String;

    move-result-object v1

    .local v1, arrayExitCode:[Ljava/lang/String;
    const-string v7, "PhoneNumberUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "arrayExitCode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .local v2, exitCode:Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #arrayExitCode:[Ljava/lang/String;
    .end local v2           #exitCode:Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_2

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isNanp(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "+1"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v10}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v7

    :goto_1
    return-object v7

    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #arrayExitCode:[Ljava/lang/String;
    .restart local v2       #exitCode:Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #arrayExitCode:[Ljava/lang/String;
    .end local v2           #exitCode:Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0xc

    if-ne v7, v8, :cond_3

    const-string v7, "+1"

    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .local v6, possibleNanp:Ljava/lang/String;
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isNanp(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "+1"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v10}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v7

    goto :goto_1

    .end local v6           #possibleNanp:Ljava/lang/String;
    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0xb

    if-ne v7, v8, :cond_4

    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x31

    if-ne v7, v8, :cond_4

    invoke-virtual {v5, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #possibleNanp:Ljava/lang/String;
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isNanp(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "+1"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v10}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v7

    goto :goto_1

    .end local v6           #possibleNanp:Ljava/lang/String;
    :cond_4
    const-string v7, "+011"

    invoke-virtual {v5, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {v5, v10}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v7

    goto :goto_1

    :cond_5
    const-string v7, "011"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v10}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v7

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v13, :cond_8

    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2b

    if-ne v7, v8, :cond_7

    invoke-virtual {v5, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "+011"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v10}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v7

    goto/16 :goto_1

    :cond_8
    invoke-static {v5, v10}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v7

    goto/16 :goto_1
.end method

.method public static numberToCalledPartyBCD(Ljava/lang/String;)[B
    .locals 1
    .parameter "number"

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v0

    return-object v0
.end method

.method private static numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B
    .locals 11
    .parameter "number"
    .parameter "includeLength"

    .prologue
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, numberLenReal:I
    move v0, v5

    .local v0, numberLenEffective:I
    const/16 v1, 0x2b

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    move v3, v1

    .local v3, hasPlus:Z
    :goto_0
    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    if-nez v0, :cond_2

    const/4 p0, 0x0

    .end local v0           #numberLenEffective:I
    .end local p0
    .end local p1
    :goto_1
    return-object p0

    .end local v3           #hasPlus:Z
    .restart local v0       #numberLenEffective:I
    .restart local p0
    .restart local p1
    :cond_1
    const/4 v1, 0x0

    move v3, v1

    goto :goto_0

    .restart local v3       #hasPlus:Z
    :cond_2
    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v1, v0, 0x2

    .end local v0           #numberLenEffective:I
    .local v1, resultLen:I
    const/4 v0, 0x1

    .local v0, extraBytes:I
    if-eqz p1, :cond_9

    add-int/lit8 v0, v0, 0x1

    move v2, v0

    .end local v0           #extraBytes:I
    .local v2, extraBytes:I
    :goto_2
    add-int v7, v1, v2

    .end local v1           #resultLen:I
    .local v7, resultLen:I
    new-array v6, v7, [B

    .local v6, result:[B
    const/4 v0, 0x0

    .local v0, digitCount:I
    const/4 v1, 0x0

    .local v1, i:I
    move v4, v1

    .end local v1           #i:I
    .local v4, i:I
    move v1, v0

    .end local v0           #digitCount:I
    .local v1, digitCount:I
    :goto_3
    if-ge v4, v5, :cond_5

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, c:C
    const/16 v8, 0x2b

    if-ne v0, v8, :cond_3

    move v0, v1

    .end local v1           #digitCount:I
    .local v0, digitCount:I
    :goto_4
    add-int/lit8 v1, v4, 0x1

    .end local v4           #i:I
    .local v1, i:I
    move v4, v1

    .end local v1           #i:I
    .restart local v4       #i:I
    move v1, v0

    .end local v0           #digitCount:I
    .local v1, digitCount:I
    goto :goto_3

    .local v0, c:C
    :cond_3
    and-int/lit8 v8, v1, 0x1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    const/4 v8, 0x4

    .local v8, shift:I
    :goto_5
    shr-int/lit8 v9, v1, 0x1

    add-int/2addr v9, v2

    aget-byte v10, v6, v9

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->charToBCD(C)I

    move-result v0

    .end local v0           #c:C
    and-int/lit8 v0, v0, 0xf

    shl-int/2addr v0, v8

    int-to-byte v0, v0

    or-int/2addr v0, v10

    int-to-byte v0, v0

    aput-byte v0, v6, v9

    add-int/lit8 v0, v1, 0x1

    .end local v1           #digitCount:I
    .local v0, digitCount:I
    goto :goto_4

    .end local v8           #shift:I
    .local v0, c:C
    .restart local v1       #digitCount:I
    :cond_4
    const/4 v8, 0x0

    goto :goto_5

    .end local v0           #c:C
    :cond_5
    and-int/lit8 p0, v1, 0x1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    .end local p0
    shr-int/lit8 p0, v1, 0x1

    add-int/2addr p0, v2

    aget-byte v0, v6, p0

    or-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    aput-byte v0, v6, p0

    :cond_6
    const/4 p0, 0x0

    .local p0, offset:I
    if-eqz p1, :cond_7

    add-int/lit8 p1, p0, 0x1

    .end local p0           #offset:I
    .local p1, offset:I
    const/4 v0, 0x1

    sub-int v0, v7, v0

    int-to-byte v0, v0

    aput-byte v0, v6, p0

    move p0, p1

    .end local p1           #offset:I
    .restart local p0       #offset:I
    :cond_7
    if-eqz v3, :cond_8

    const/16 p1, 0x91

    :goto_6
    int-to-byte p1, p1

    aput-byte p1, v6, p0

    move-object p0, v6

    goto :goto_1

    :cond_8
    const/16 p1, 0x81

    goto :goto_6

    .end local v2           #extraBytes:I
    .end local v4           #i:I
    .end local v6           #result:[B
    .end local v7           #resultLen:I
    .local v0, extraBytes:I
    .local v1, resultLen:I
    .local p0, number:Ljava/lang/String;
    .local p1, includeLength:Z
    :cond_9
    move v2, v0

    .end local v0           #extraBytes:I
    .restart local v2       #extraBytes:I
    goto :goto_2
.end method

.method private static processPlusCodeWithinNanp(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "networkDialStr"

    .prologue
    const/4 v5, 0x1

    move-object v2, p0

    .local v2, retStr:Ljava/lang/String;
    if-eqz p0, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_0

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .local v1, newStr:Ljava/lang/String;
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v2, v1

    .end local v1           #newStr:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .restart local v1       #newStr:Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultIdp()Ljava/lang/String;

    move-result-object v0

    .local v0, idpStr:Ljava/lang/String;
    const-string v3, "[+]"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static putItemMccMnc2ExitCode([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .parameter "mccMnc"
    .parameter "exitCode"

    .prologue
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .local v1, curMccMnc:Ljava/lang/String;
    sget-object v4, Landroid/telephony/PhoneNumberUtils;->sMccMnc2ExitCodes:Ljava/util/HashMap;

    invoke-virtual {v4, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1           #curMccMnc:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "s"
    .parameter "TOA"

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x91

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method public static stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "phoneNumber"

    .prologue
    if-nez p0, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #c:C
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "phoneNumber"

    .prologue
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, np:Ljava/lang/String;
    const/16 v1, 0xb

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toaFromString(Ljava/lang/String;)I
    .locals 2
    .parameter "s"

    .prologue
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_0

    const/16 v0, 0x91

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x81

    goto :goto_0
.end method

.method private static tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .locals 11
    .parameter "str"
    .parameter "acceptThailandCase"

    .prologue
    const/16 v10, 0x36

    const/16 v9, 0x30

    const/16 v8, 0x31

    const/4 v7, 0x0

    const/4 v5, 0x0

    .local v5, state:I
    const/4 v0, 0x0

    .local v0, ccc:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_f

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .local v1, ch:C
    packed-switch v5, :pswitch_data_0

    move-object v6, v7

    .end local v1           #ch:C
    :goto_1
    return-object v6

    .restart local v1       #ch:C
    :pswitch_0
    const/16 v6, 0x2b

    if-ne v1, v6, :cond_1

    const/4 v5, 0x1

    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-ne v1, v9, :cond_2

    const/4 v5, 0x2

    goto :goto_2

    :cond_2
    if-ne v1, v8, :cond_4

    if-eqz p1, :cond_3

    const/16 v5, 0x8

    goto :goto_2

    :cond_3
    move-object v6, v7

    goto :goto_1

    :cond_4
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v7

    goto :goto_1

    :pswitch_1
    if-ne v1, v9, :cond_5

    const/4 v5, 0x3

    goto :goto_2

    :cond_5
    if-ne v1, v8, :cond_6

    const/4 v5, 0x4

    goto :goto_2

    :cond_6
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v7

    goto :goto_1

    :pswitch_2
    if-ne v1, v8, :cond_7

    const/4 v5, 0x5

    goto :goto_2

    :cond_7
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v7

    goto :goto_1

    :pswitch_3
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v4

    .local v4, ret:I
    if-lez v4, :cond_c

    mul-int/lit8 v6, v0, 0xa

    add-int v0, v6, v4

    const/16 v6, 0x64

    if-ge v0, v6, :cond_8

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isCountryCallingCode(I)Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_8
    new-instance v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    add-int/lit8 v7, v2, 0x1

    invoke-direct {v6, v0, v7}, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    goto :goto_1

    :cond_9
    const/4 v6, 0x1

    if-eq v5, v6, :cond_a

    const/4 v6, 0x3

    if-eq v5, v6, :cond_a

    const/4 v6, 0x5

    if-ne v5, v6, :cond_b

    :cond_a
    const/4 v5, 0x6

    goto :goto_2

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_c
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v7

    goto :goto_1

    .end local v4           #ret:I
    :pswitch_4
    if-ne v1, v10, :cond_d

    const/16 v5, 0x9

    goto :goto_2

    :cond_d
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v7

    goto :goto_1

    :pswitch_5
    if-ne v1, v10, :cond_e

    new-instance v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    const/16 v7, 0x42

    add-int/lit8 v8, v2, 0x1

    invoke-direct {v6, v7, v8}, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    goto/16 :goto_1

    :cond_e
    move-object v6, v7

    goto/16 :goto_1

    .end local v1           #ch:C
    :cond_f
    move-object v6, v7

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static tryGetISODigit(C)I
    .locals 2
    .parameter "ch"

    .prologue
    const/16 v1, 0x30

    if-gt v1, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    sub-int v0, p0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I
    .locals 5
    .parameter "str"
    .parameter "currentIndex"

    .prologue
    const/4 v4, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, length:I
    move v1, p1

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, ch:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v3

    if-ltz v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    .end local v0           #ch:C
    :goto_1
    return v3

    .restart local v0       #ch:C
    :cond_0
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #ch:C
    :cond_2
    move v3, v4

    goto :goto_1
.end method

.method private static trySearchingExitCodeByKey(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->sMccMnc2ExitCodes:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method
