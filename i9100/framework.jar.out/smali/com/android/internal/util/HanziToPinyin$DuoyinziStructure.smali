.class public Lcom/android/internal/util/HanziToPinyin$DuoyinziStructure;
.super Ljava/lang/Object;
.source "HanziToPinyin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/HanziToPinyin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DuoyinziStructure"
.end annotation


# instance fields
.field public final CHINESE_DUOYINZI_COUNT_MAX:I

.field public final DUOYINZI_LENGTH_MAX:I

.field public intUnicode:[I

.field public s1stPinyinSpell:[Ljava/lang/String;

.field public s2ndDuoYinZiPinyinSpell:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const-string v7, "ju"

    const-string/jumbo v6, "shi"

    const-string/jumbo v5, "qi"

    const-string v4, "jia"

    const-string v3, "jiao"

    .line 1681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    const/16 v0, 0x1c7

    iput v0, p0, Lcom/android/internal/util/HanziToPinyin$DuoyinziStructure;->CHINESE_DUOYINZI_COUNT_MAX:I

    .line 306
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/internal/util/HanziToPinyin$DuoyinziStructure;->DUOYINZI_LENGTH_MAX:I

    .line 308
    const/16 v0, 0x1c7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/util/HanziToPinyin$DuoyinziStructure;->intUnicode:[I

    .line 765
    const/16 v0, 0x1c7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "wan"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "qie"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "le"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "cheng"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "mie"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "gan"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "liao"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "wang"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "qin"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "shi"

    aput-object v6, v0, v1

    const/16 v1, 0xa

    const-string v2, "chou"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "yi"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "hui"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "cang"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "bo"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "si"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "si"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "jia"

    aput-object v4, v0, v1

    const/16 v1, 0x12

    const-string v2, "fo"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "er"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "jiao"

    aput-object v3, v0, v1

    const/16 v1, 0x15

    const-string v2, "jiao"

    aput-object v3, v0, v1

    const/16 v1, 0x16

    const-string v2, "bian"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "si"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "lia"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "tang"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "jie"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "lv"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "gui"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "liu"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "mao"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "feng"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "ao"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "zao"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "bao"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string/jumbo v2, "quan"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "cha"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string/jumbo v2, "xue"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string/jumbo v2, "yan"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "bo"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "jiao"

    aput-object v3, v0, v1

    const/16 v1, 0x29

    const-string v2, "jing"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "le"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "chi"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string/jumbo v2, "zu"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "dan"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string/jumbo v2, "nan"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string/jumbo v2, "qia"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string/jumbo v2, "sha"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "can"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string/jumbo v2, "tao"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string/jumbo v2, "ye"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string/jumbo v2, "xu"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string/jumbo v2, "xia"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "bi"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "fou"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "hang"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string/jumbo v2, "zhi"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "bai"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string/jumbo v2, "yuan"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string/jumbo v2, "ni"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "he"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "ju"

    aput-object v7, v0, v1

    const/16 v1, 0x3f

    const-string/jumbo v2, "za"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "he"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "ge"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "ke"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string/jumbo v2, "yan"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "e"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string/jumbo v2, "na"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "hu"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string/jumbo v2, "sha"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string/jumbo v2, "zhou"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "chuo"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "die"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string/jumbo v2, "wo"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string/jumbo v2, "zha"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string/jumbo v2, "yi"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "hai"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "gu"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string/jumbo v2, "xu"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string/jumbo v2, "zuo"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "chao"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "hei"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "cheng"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string/jumbo v2, "xue"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "ca"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string/jumbo v2, "xiao"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "jiao"

    aput-object v3, v0, v1

    const/16 v1, 0x5a

    const-string v2, "jian"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "dun"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string/jumbo v2, "quan"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string/jumbo v2, "yuan"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string/jumbo v2, "wei"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "di"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string/jumbo v2, "pi"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "chi"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string/jumbo v2, "mai"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "bu"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "duo"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "bao"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string/jumbo v2, "ta"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string/jumbo v2, "sai"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "ke"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "da"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "hang"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string/jumbo v2, "qi"

    aput-object v5, v0, v1

    const/16 v1, 0x6c

    const-string/jumbo v2, "qi"

    aput-object v5, v0, v1

    const/16 v1, 0x6d

    const-string/jumbo v2, "zang"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string/jumbo v2, "mu"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string/jumbo v2, "nuo"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string/jumbo v2, "mian"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "huai"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "chan"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string/jumbo v2, "su"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string/jumbo v2, "wei"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "chi"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string/jumbo v2, "wei"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string/jumbo v2, "niao"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string/jumbo v2, "ping"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string/jumbo v2, "shu"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string/jumbo v2, "tun"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string/jumbo v2, "yi"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string/jumbo v2, "zhi"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "jiao"

    aput-object v3, v0, v1

    const/16 v1, 0x7e

    const-string/jumbo v2, "wei"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "chai"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string/jumbo v2, "xiang"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "chou"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "chuang"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "di"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "du"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string/jumbo v2, "qin"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string/jumbo v2, "nong"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "dan"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string/jumbo v2, "pang"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "huai"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "de"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string/jumbo v2, "zheng"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string/jumbo v2, "te"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string/jumbo v2, "zhong"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string/jumbo v2, "zen"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string/jumbo v2, "si"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string/jumbo v2, "tong"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "e"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string/jumbo v2, "tang"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string/jumbo v2, "qian"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "gang"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string/jumbo v2, "xu"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string/jumbo v2, "xi"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "bian"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string/jumbo v2, "zha"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "ba"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "kang"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "ban"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string/jumbo v2, "zhe"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string/jumbo v2, "mo"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "fu"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "chai"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string/jumbo v2, "tuo"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "ao"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string/jumbo v2, "ze"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "gua"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string/jumbo v2, "zan"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string/jumbo v2, "shi"

    aput-object v6, v0, v1

    const/16 v1, 0xa6

    const-string v2, "ku"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string/jumbo v2, "zhua"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string/jumbo v2, "suo"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "bai"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "guo"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "dan"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "can"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string/jumbo v2, "ti"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string/jumbo v2, "she"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "jiao"

    aput-object v3, v0, v1

    const/16 v1, 0xb0

    const-string/jumbo v2, "mo"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "cuo"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string/jumbo v2, "zan"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "dun"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string/jumbo v2, "shu"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string/jumbo v2, "yu"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string/jumbo v2, "wu"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, "bao"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string v2, "bao"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, "ceng"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string/jumbo v2, "zhao"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v2, "ji"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string/jumbo v2, "zhu"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string/jumbo v2, "po"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string/jumbo v2, "shao"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string v2, "gou"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string v2, "duo"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string v2, "bo"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const-string v2, "ju"

    aput-object v7, v0, v1

    const/16 v1, 0xc3

    const-string/jumbo v2, "zuo"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string v2, "cha"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string/jumbo v2, "zha"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string v2, "li"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string/jumbo v2, "qi"

    aput-object v5, v0, v1

    const/16 v1, 0xc8

    const-string v2, "gua"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string/jumbo v2, "xiao"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const-string v2, "he"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const-string v2, "hang"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const-string v2, "jie"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const-string v2, "gui"

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const-string/jumbo v2, "shao"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const-string v2, "leng"

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    const-string/jumbo v2, "shen"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const-string/jumbo v2, "zha"

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    const-string v2, "jian"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const-string v2, "bin"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const-string/jumbo v2, "qi"

    aput-object v5, v0, v1

    const/16 v1, 0xd5

    const-string/jumbo v2, "mo"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const-string v2, "cheng"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const-string/jumbo v2, "she"

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const-string/jumbo v2, "zhi"

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const-string/jumbo v2, "yin"

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const-string/jumbo v2, "shi"

    aput-object v6, v0, v1

    const/16 v1, 0xdb

    const-string/jumbo v2, "mang"

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const-string v2, "cuan"

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    const-string/jumbo v2, "tang"

    aput-object v2, v0, v1

    const/16 v1, 0xde

    const-string v2, "chen"

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const-string v2, "dun"

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    const-string/jumbo v2, "mei"

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const-string v2, "bo"

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const-string/jumbo v2, "mi"

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    const-string v2, "long"

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    const-string/jumbo v2, "pai"

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    const-string/jumbo v2, "qian"

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    const-string v2, "kuai"

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    const-string v2, "hu"

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    const-string v2, "jun"

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    const-string/jumbo v2, "yong"

    aput-object v2, v0, v1

    const/16 v1, 0xea

    const-string/jumbo v2, "wo"

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    const-string/jumbo v2, "mian"

    aput-object v2, v0, v1

    const/16 v1, 0xec

    const-string v2, "jia"

    aput-object v4, v0, v1

    const/16 v1, 0xed

    const-string/jumbo v2, "yin"

    aput-object v2, v0, v1

    const/16 v1, 0xee

    const-string v2, "kui"

    aput-object v2, v0, v1

    const/16 v1, 0xef

    const-string/jumbo v2, "ni"

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    const-string/jumbo v2, "ta"

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    const-string v2, "liao"

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    const-string v2, "cheng"

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    const-string/jumbo v2, "pu"

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    const-string v2, "jiong"

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    const-string v2, "gui"

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    const-string/jumbo v2, "pao"

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    const-string v2, "luo"

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    const-string/jumbo v2, "yan"

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    const-string v2, "dao"

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    const-string/jumbo v2, "shou"

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    const-string/jumbo v2, "yun"

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    const-string/jumbo v2, "zhua"

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    const-string/jumbo v2, "mou"

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    const-string v2, "jian"

    aput-object v2, v0, v1

    const/16 v1, 0xff

    const-string v2, "an"

    aput-object v2, v0, v1

    const/16 v1, 0x100

    const-string v2, "jiao"

    aput-object v3, v0, v1

    const/16 v1, 0x101

    const-string v2, "lv"

    aput-object v2, v0, v1

    const/16 v1, 0x102

    const-string/jumbo v2, "wen"

    aput-object v2, v0, v1

    const/16 v1, 0x103

    const-string v2, "bin"

    aput-object v2, v0, v1

    const/16 v1, 0x104

    const-string v2, "hun"

    aput-object v2, v0, v1

    const/16 v1, 0x105

    const-string/jumbo v2, "zhuo"

    aput-object v2, v0, v1

    const/16 v1, 0x106

    const-string/jumbo v2, "shen"

    aput-object v2, v0, v1

    const/16 v1, 0x107

    const-string/jumbo v2, "ting"

    aput-object v2, v0, v1

    const/16 v1, 0x108

    const-string v2, "fan"

    aput-object v2, v0, v1

    const/16 v1, 0x109

    const-string/jumbo v2, "pi"

    aput-object v2, v0, v1

    const/16 v1, 0x10a

    const-string/jumbo v2, "nve"

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    const-string v2, "dan"

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    const-string v2, "chi"

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    const-string v2, "chai"

    aput-object v2, v0, v1

    const/16 v1, 0x10e

    const-string v2, "bai"

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    const-string v2, "de"

    aput-object v2, v0, v1

    const/16 v1, 0x110

    const-string/jumbo v2, "wan"

    aput-object v2, v0, v1

    const/16 v1, 0x111

    const-string/jumbo v2, "sheng"

    aput-object v2, v0, v1

    const/16 v1, 0x112

    const-string/jumbo v2, "sheng"

    aput-object v2, v0, v1

    const/16 v1, 0x113

    const-string/jumbo v2, "zhao"

    aput-object v2, v0, v1

    const/16 v1, 0x114

    const-string/jumbo v2, "qu"

    aput-object v2, v0, v1

    const/16 v1, 0x115

    const-string v2, "jin"

    aput-object v2, v0, v1

    const/16 v1, 0x116

    const-string v2, "jiao"

    aput-object v3, v0, v1

    const/16 v1, 0x117

    const-string/jumbo v2, "shi"

    aput-object v6, v0, v1

    const/16 v1, 0x118

    const-string v2, "hua"

    aput-object v2, v0, v1

    const/16 v1, 0x119

    const-string/jumbo v2, "qi"

    aput-object v5, v0, v1

    const/16 v1, 0x11a

    const-string v2, "fei"

    aput-object v2, v0, v1

    const/16 v1, 0x11b

    const-string v2, "li"

    aput-object v2, v0, v1

    const/16 v1, 0x11c

    const-string/jumbo v2, "tong"

    aput-object v2, v0, v1

    const/16 v1, 0x11d

    const-string v2, "bang"

    aput-object v2, v0, v1

    const/16 v1, 0x11e

    const-string/jumbo v2, "mi"

    aput-object v2, v0, v1

    const/16 v1, 0x11f

    const-string v2, "ji"

    aput-object v2, v0, v1

    const/16 v1, 0x120

    const-string/jumbo v2, "shan"

    aput-object v2, v0, v1

    const/16 v1, 0x121

    const-string v2, "chong"

    aput-object v2, v0, v1

    const/16 v1, 0x122

    const-string/jumbo v2, "mi"

    aput-object v2, v0, v1

    const/16 v1, 0x123

    const-string v2, "cheng"

    aput-object v2, v0, v1

    const/16 v1, 0x124

    const-string v2, "cheng"

    aput-object v2, v0, v1

    const/16 v1, 0x125

    const-string v2, "ji"

    aput-object v2, v0, v1

    const/16 v1, 0x126

    const-string/jumbo v2, "ze"

    aput-object v2, v0, v1

    const/16 v1, 0x127

    const-string/jumbo v2, "yun"

    aput-object v2, v0, v1

    const/16 v1, 0x128

    const-string/jumbo v2, "nian"

    aput-object v2, v0, v1

    const/16 v1, 0x129

    const-string/jumbo v2, "zi"

    aput-object v2, v0, v1

    const/16 v1, 0x12a

    const-string/jumbo v2, "zhou"

    aput-object v2, v0, v1

    const/16 v1, 0x12b

    const-string/jumbo v2, "san"

    aput-object v2, v0, v1

    const/16 v1, 0x12c

    const-string/jumbo v2, "mi"

    aput-object v2, v0, v1

    const/16 v1, 0x12d

    const-string/jumbo v2, "xi"

    aput-object v2, v0, v1

    const/16 v1, 0x12e

    const-string/jumbo v2, "qi"

    aput-object v5, v0, v1

    const/16 v1, 0x12f

    const-string v2, "fan"

    aput-object v2, v0, v1

    const/16 v1, 0x130

    const-string/jumbo v2, "zhou"

    aput-object v2, v0, v1

    const/16 v1, 0x131

    const-string v2, "hong"

    aput-object v2, v0, v1

    const/16 v1, 0x132

    const-string v2, "he"

    aput-object v2, v0, v1

    const/16 v1, 0x133

    const-string/jumbo v2, "yue"

    aput-object v2, v0, v1

    const/16 v1, 0x134

    const-string v2, "lun"

    aput-object v2, v0, v1

    const/16 v1, 0x135

    const-string v2, "luo"

    aput-object v2, v0, v1

    const/16 v1, 0x136

    const-string v2, "jiao"

    aput-object v3, v0, v1

    const/16 v1, 0x137

    const-string/jumbo v2, "zeng"

    aput-object v2, v0, v1

    const/16 v1, 0x138

    const-string v2, "ji"

    aput-object v2, v0, v1

    const/16 v1, 0x139

    const-string v2, "bian"

    aput-object v2, v0, v1

    const/16 v1, 0x13a

    const-string/jumbo v2, "suo"

    aput-object v2, v0, v1

    const/16 v1, 0x13b

    const-string/jumbo v2, "mou"

    aput-object v2, v0, v1

    const/16 v1, 0x13c

    const-string v2, "jiao"

    aput-object v3, v0, v1

    const/16 v1, 0x13d

    const-string v2, "di"

    aput-object v2, v0, v1

    const/16 v1, 0x13e

    const-string/jumbo v2, "pa"

    aput-object v2, v0, v1

    const/16 v1, 0x13f

    const-string/jumbo v2, "ting"

    aput-object v2, v0, v1

    const/16 v1, 0x140

    const-string v2, "le"

    aput-object v2, v0, v1

    const/16 v1, 0x141

    const-string/jumbo v2, "pang"

    aput-object v2, v0, v1

    const/16 v1, 0x142

    const-string/jumbo v2, "mai"

    aput-object v2, v0, v1

    const/16 v1, 0x143

    const-string v2, "jiao"

    aput-object v3, v0, v1

    const/16 v1, 0x144

    const-string v2, "fu"

    aput-object v2, v0, v1

    const/16 v1, 0x145

    const-string v2, "la"

    aput-object v2, v0, v1

    const/16 v1, 0x146

    const-string v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0x147

    const-string v2, "bang"

    aput-object v2, v0, v1

    const/16 v1, 0x148

    const-string v2, "bi"

    aput-object v2, v0, v1

    const/16 v1, 0x149

    const-string v2, "chou"

    aput-object v2, v0, v1

    const/16 v1, 0x14a

    const-string v2, "ban"

    aput-object v2, v0, v1

    const/16 v1, 0x14b

    const-string v2, "duo"

    aput-object v2, v0, v1

    const/16 v1, 0x14c

    const-string/jumbo v2, "se"

    aput-object v2, v0, v1

    const/16 v1, 0x14d

    const-string/jumbo v2, "qiu"

    aput-object v2, v0, v1

    const/16 v1, 0x14e

    const-string v2, "ai"

    aput-object v2, v0, v1

    const/16 v1, 0x14f

    const-string/jumbo v2, "mang"

    aput-object v2, v0, v1

    const/16 v1, 0x150

    const-string v2, "fei"

    aput-object v2, v0, v1

    const/16 v1, 0x151

    const-string/jumbo v2, "tiao"

    aput-object v2, v0, v1

    const/16 v1, 0x152

    const-string v2, "ju"

    aput-object v7, v0, v1

    const/16 v1, 0x153

    const-string/jumbo v2, "pi"

    aput-object v2, v0, v1

    const/16 v1, 0x154

    const-string/jumbo v2, "ruo"

    aput-object v2, v0, v1

    const/16 v1, 0x155

    const-string/jumbo v2, "ping"

    aput-object v2, v0, v1

    const/16 v1, 0x156

    const-string/jumbo v2, "qie"

    aput-object v2, v0, v1

    const/16 v1, 0x157

    const-string/jumbo v2, "qian"

    aput-object v2, v0, v1

    const/16 v1, 0x158

    const-string/jumbo v2, "ti"

    aput-object v2, v0, v1

    const/16 v1, 0x159

    const-string/jumbo v2, "qi"

    aput-object v5, v0, v1

    const/16 v1, 0x15a

    const-string v2, "hun"

    aput-object v2, v0, v1

    const/16 v1, 0x15b

    const-string/jumbo v2, "ying"

    aput-object v2, v0, v1

    const/16 v1, 0x15c

    const-string v2, "fu"

    aput-object v2, v0, v1

    const/16 v1, 0x15d

    const-string/jumbo v2, "sha"

    aput-object v2, v0, v1

    const/16 v1, 0x15e

    const-string/jumbo v2, "xin"

    aput-object v2, v0, v1

    const/16 v1, 0x15f

    const-string v2, "guan"

    aput-object v2, v0, v1

    const/16 v1, 0x160

    const-string v2, "lang"

    aput-object v2, v0, v1

    const/16 v1, 0x161

    const-string v2, "ju"

    aput-object v7, v0, v1

    const/16 v1, 0x162

    const-string v2, "bei"

    aput-object v2, v0, v1

    const/16 v1, 0x163

    const-string v2, "luo"

    aput-object v2, v0, v1

    const/16 v1, 0x164

    const-string/jumbo v2, "shen"

    aput-object v2, v0, v1

    const/16 v1, 0x165

    const-string/jumbo v2, "pang"

    aput-object v2, v0, v1

    const/16 v1, 0x166

    const-string v2, "lan"

    aput-object v2, v0, v1

    const/16 v1, 0x167

    const-string/jumbo v2, "man"

    aput-object v2, v0, v1

    const/16 v1, 0x168

    const-string v2, "jiao"

    aput-object v3, v0, v1

    const/16 v1, 0x169

    const-string v2, "bo"

    aput-object v2, v0, v1

    const/16 v1, 0x16a

    const-string v2, "cang"

    aput-object v2, v0, v1

    const/16 v1, 0x16b

    const-string v2, "hong"

    aput-object v2, v0, v1

    const/16 v1, 0x16c

    const-string/jumbo v2, "xia"

    aput-object v2, v0, v1

    const/16 v1, 0x16d

    const-string v2, "bang"

    aput-object v2, v0, v1

    const/16 v1, 0x16e

    const-string/jumbo v2, "she"

    aput-object v2, v0, v1

    const/16 v1, 0x16f

    const-string/jumbo v2, "shao"

    aput-object v2, v0, v1

    const/16 v1, 0x170

    const-string v2, "e"

    aput-object v2, v0, v1

    const/16 v1, 0x171

    const-string/jumbo v2, "zha"

    aput-object v2, v0, v1

    const/16 v1, 0x172

    const-string/jumbo v2, "mao"

    aput-object v2, v0, v1

    const/16 v1, 0x173

    const-string/jumbo v2, "xie"

    aput-object v2, v0, v1

    const/16 v1, 0x174

    const-string/jumbo v2, "xing"

    aput-object v2, v0, v1

    const/16 v1, 0x175

    const-string/jumbo v2, "shuai"

    aput-object v2, v0, v1

    const/16 v1, 0x176

    const-string v2, "bei"

    aput-object v2, v0, v1

    const/16 v1, 0x177

    const-string v2, "jia"

    aput-object v4, v0, v1

    const/16 v1, 0x178

    const-string v2, "bi"

    aput-object v2, v0, v1

    const/16 v1, 0x179

    const-string v2, "chang"

    aput-object v2, v0, v1

    const/16 v1, 0x17a

    const-string/jumbo v2, "xi"

    aput-object v2, v0, v1

    const/16 v1, 0x17b

    const-string v2, "chu"

    aput-object v2, v0, v1

    const/16 v1, 0x17c

    const-string/jumbo v2, "tun"

    aput-object v2, v0, v1

    const/16 v1, 0x17d

    const-string/jumbo v2, "tan"

    aput-object v2, v0, v1

    const/16 v1, 0x17e

    const-string v2, "jian"

    aput-object v2, v0, v1

    const/16 v1, 0x17f

    const-string v2, "jue"

    aput-object v2, v0, v1

    const/16 v1, 0x180

    const-string v2, "jiao"

    aput-object v3, v0, v1

    const/16 v1, 0x181

    const-string/jumbo v2, "zui"

    aput-object v2, v0, v1

    const/16 v1, 0x182

    const-string v2, "jie"

    aput-object v2, v0, v1

    const/16 v1, 0x183

    const-string/jumbo v2, "shuo"

    aput-object v2, v0, v1

    const/16 v1, 0x184

    const-string v2, "du"

    aput-object v2, v0, v1

    const/16 v1, 0x185

    const-string/jumbo v2, "shui"

    aput-object v2, v0, v1

    const/16 v1, 0x186

    const-string v2, "diao"

    aput-object v2, v0, v1

    const/16 v1, 0x187

    const-string/jumbo v2, "mi"

    aput-object v2, v0, v1

    const/16 v1, 0x188

    const-string v2, "gu"

    aput-object v2, v0, v1

    const/16 v1, 0x189

    const-string v2, "huo"

    aput-object v2, v0, v1

    const/16 v1, 0x18a

    const-string v2, "he"

    aput-object v2, v0, v1

    const/16 v1, 0x18b

    const-string v2, "bi"

    aput-object v2, v0, v1

    const/16 v1, 0x18c

    const-string v2, "jia"

    aput-object v4, v0, v1

    const/16 v1, 0x18d

    const-string/jumbo v2, "zhuan"

    aput-object v2, v0, v1

    const/16 v1, 0x18e

    const-string v2, "ju"

    aput-object v7, v0, v1

    const/16 v1, 0x18f

    const-string/jumbo v2, "qu"

    aput-object v2, v0, v1

    const/16 v1, 0x190

    const-string v2, "bao"

    aput-object v2, v0, v1

    const/16 v1, 0x191

    const-string v2, "dian"

    aput-object v2, v0, v1

    const/16 v1, 0x192

    const-string/jumbo v2, "xi"

    aput-object v2, v0, v1

    const/16 v1, 0x193

    const-string v2, "dun"

    aput-object v2, v0, v1

    const/16 v1, 0x194

    const-string v2, "che"

    aput-object v2, v0, v1

    const/16 v1, 0x195

    const-string/jumbo v2, "ya"

    aput-object v2, v0, v1

    const/16 v1, 0x196

    const-string/jumbo v2, "zhuan"

    aput-object v2, v0, v1

    const/16 v1, 0x197

    const-string/jumbo v2, "pi"

    aput-object v2, v0, v1

    const/16 v1, 0x198

    const-string/jumbo v2, "zhe"

    aput-object v2, v0, v1

    const/16 v1, 0x199

    const-string/jumbo v2, "po"

    aput-object v2, v0, v1

    const/16 v1, 0x19a

    const-string/jumbo v2, "shi"

    aput-object v6, v0, v1

    const/16 v1, 0x19b

    const-string/jumbo v2, "xie"

    aput-object v2, v0, v1

    const/16 v1, 0x19c

    const-string v2, "du"

    aput-object v2, v0, v1

    const/16 v1, 0x19d

    const-string v2, "hang"

    aput-object v2, v0, v1

    const/16 v1, 0x19e

    const-string/jumbo v2, "zhong"

    aput-object v2, v0, v1

    const/16 v1, 0x19f

    const-string/jumbo v2, "yao"

    aput-object v2, v0, v1

    const/16 v1, 0x1a0

    const-string v2, "ba"

    aput-object v2, v0, v1

    const/16 v1, 0x1a1

    const-string v2, "dian"

    aput-object v2, v0, v1

    const/16 v1, 0x1a2

    const-string/jumbo v2, "qian"

    aput-object v2, v0, v1

    const/16 v1, 0x1a3

    const-string/jumbo v2, "ta"

    aput-object v2, v0, v1

    const/16 v1, 0x1a4

    const-string v2, "dang"

    aput-object v2, v0, v1

    const/16 v1, 0x1a5

    const-string/jumbo v2, "xian"

    aput-object v2, v0, v1

    const/16 v1, 0x1a6

    const-string/jumbo v2, "ting"

    aput-object v2, v0, v1

    const/16 v1, 0x1a7

    const-string/jumbo v2, "yao"

    aput-object v2, v0, v1

    const/16 v1, 0x1a8

    const-string v2, "hao"

    aput-object v2, v0, v1

    const/16 v1, 0x1a9

    const-string v2, "dui"

    aput-object v2, v0, v1

    const/16 v1, 0x1aa

    const-string v2, "chang"

    aput-object v2, v0, v1

    const/16 v1, 0x1ab

    const-string v2, "kan"

    aput-object v2, v0, v1

    const/16 v1, 0x1ac

    const-string v2, "dian"

    aput-object v2, v0, v1

    const/16 v1, 0x1ad

    const-string v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0x1ae

    const-string/jumbo v2, "po"

    aput-object v2, v0, v1

    const/16 v1, 0x1af

    const-string v2, "jiang"

    aput-object v2, v0, v1

    const/16 v1, 0x1b0

    const-string/jumbo v2, "tao"

    aput-object v2, v0, v1

    const/16 v1, 0x1b1

    const-string v2, "jun"

    aput-object v2, v0, v1

    const/16 v1, 0x1b2

    const-string/jumbo v2, "que"

    aput-object v2, v0, v1

    const/16 v1, 0x1b3

    const-string/jumbo v2, "xian"

    aput-object v2, v0, v1

    const/16 v1, 0x1b4

    const-string v2, "lu"

    aput-object v2, v0, v1

    const/16 v1, 0x1b5

    const-string v2, "ge"

    aput-object v2, v0, v1

    const/16 v1, 0x1b6

    const-string/jumbo v2, "qiao"

    aput-object v2, v0, v1

    const/16 v1, 0x1b7

    const-string v2, "dun"

    aput-object v2, v0, v1

    const/16 v1, 0x1b8

    const-string v2, "jing"

    aput-object v2, v0, v1

    const/16 v1, 0x1b9

    const-string v2, "jie"

    aput-object v2, v0, v1

    const/16 v1, 0x1ba

    const-string/jumbo v2, "zhan"

    aput-object v2, v0, v1

    const/16 v1, 0x1bb

    const-string/jumbo v2, "shi"

    aput-object v6, v0, v1

    const/16 v1, 0x1bc

    const-string/jumbo v2, "xing"

    aput-object v2, v0, v1

    const/16 v1, 0x1bd

    const-string v2, "jiao"

    aput-object v3, v0, v1

    const/16 v1, 0x1be

    const-string/jumbo v2, "tuo"

    aput-object v2, v0, v1

    const/16 v1, 0x1bf

    const-string/jumbo v2, "piao"

    aput-object v2, v0, v1

    const/16 v1, 0x1c0

    const-string/jumbo v2, "po"

    aput-object v2, v0, v1

    const/16 v1, 0x1c1

    const-string/jumbo v2, "qing"

    aput-object v2, v0, v1

    const/16 v1, 0x1c2

    const-string v2, "hu"

    aput-object v2, v0, v1

    const/16 v1, 0x1c3

    const-string v2, "hu"

    aput-object v2, v0, v1

    const/16 v1, 0x1c4

    const-string v2, "jun"

    aput-object v2, v0, v1

    const/16 v1, 0x1c5

    const-string/jumbo v2, "min"

    aput-object v2, v0, v1

    const/16 v1, 0x1c6

    const-string v2, "gui"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/internal/util/HanziToPinyin$DuoyinziStructure;->s1stPinyinSpell:[Ljava/lang/String;

    .line 1223
    const/16 v0, 0x1c7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "mo"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ju"

    aput-object v7, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "yue"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "sheng"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "nie"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "qian"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "le"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "wu"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "qing"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "shen"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "qiu"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ge"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "kuai"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "chen"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "bai"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "ci"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "shi"

    aput-object v6, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "qie"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "fu"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "nai"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "jia"

    aput-object v4, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "yao"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "pian"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "qi"

    aput-object v5, v0, v1

    const/16 v1, 0x18

    const-string v2, "liang"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "chang"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "ji"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "lou"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "kui"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "lu"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "mo"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "ping"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "wa"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "zuo"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "pao"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string/jumbo v2, "xuan"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string/jumbo v2, "sha"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string/jumbo v2, "xiao"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string/jumbo v2, "shan"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "bao"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "chao"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "jin"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "lei"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string/jumbo v2, "shi"

    aput-object v6, v0, v1

    const/16 v1, 0x2c

    const-string v2, "cu"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string/jumbo v2, "shan"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string/jumbo v2, "na"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "ka"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string/jumbo v2, "xia"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "cen"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "dao"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string/jumbo v2, "xie"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string/jumbo v2, "yu"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "he"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string/jumbo v2, "pi"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string/jumbo v2, "pi"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "keng"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string/jumbo v2, "zi"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "bei"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string/jumbo v2, "yun"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string/jumbo v2, "ne"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "ke"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string/jumbo v2, "zui"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string/jumbo v2, "ze"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "huo"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "ka"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "hai"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string/jumbo v2, "ye"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string/jumbo v2, "o"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string/jumbo v2, "ne"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string/jumbo v2, "xia"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string/jumbo v2, "za"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string/jumbo v2, "zhao"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "chuai"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string/jumbo v2, "zha"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string/jumbo v2, "o"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "cha"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string/jumbo v2, "sha"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "ai"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "hei"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "jia"

    aput-object v4, v0, v1

    const/16 v1, 0x51

    const-string/jumbo v2, "shi"

    aput-object v6, v0, v1

    const/16 v1, 0x52

    const-string v2, "chuai"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string/jumbo v2, "zhao"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string/jumbo v2, "mo"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "ceng"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "jue"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "cha"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "ao"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "jue"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string/jumbo v2, "nan"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string/jumbo v2, "tun"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "juan"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "huan"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string/jumbo v2, "xu"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "de"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "huai"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "di"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string/jumbo v2, "man"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string/jumbo v2, "pu"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "hui"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "bu"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "da"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string/jumbo v2, "se"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string/jumbo v2, "qiao"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "dai"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "ben"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "ji"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string/jumbo v2, "xie"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string/jumbo v2, "zhuang"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "lao"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string/jumbo v2, "na"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string/jumbo v2, "wan"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string/jumbo v2, "nao"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "can"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string/jumbo v2, "xiu"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string/jumbo v2, "yu"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "che"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string/jumbo v2, "yi"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string/jumbo v2, "sui"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "bing"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string/jumbo v2, "zhu"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string/jumbo v2, "zhun"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "ge"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string/jumbo v2, "shi"

    aput-object v6, v0, v1

    const/16 v1, 0x7d

    const-string/jumbo v2, "qiao"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string/jumbo v2, "wai"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "ci"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "hang"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "dao"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string/jumbo v2, "zhuang"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "de"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "duo"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "jin"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "long"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string/jumbo v2, "tan"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "fang"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "hui"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "dei"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string/jumbo v2, "zhi"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string/jumbo v2, "tei"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string/jumbo v2, "song"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string/jumbo v2, "ze"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string/jumbo v2, "sai"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "dong"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string/jumbo v2, "wu"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "chang"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string/jumbo v2, "qie"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string/jumbo v2, "zhuang"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string/jumbo v2, "qu"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "hu"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string/jumbo v2, "pian"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string/jumbo v2, "za"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string/jumbo v2, "pa"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "gang"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string/jumbo v2, "pan"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string/jumbo v2, "she"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string/jumbo v2, "ma"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "bi"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "ca"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string/jumbo v2, "ta"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string/jumbo v2, "niu"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string/jumbo v2, "zhai"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "kuo"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string/jumbo v2, "za"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string/jumbo v2, "she"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "kua"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string/jumbo v2, "wo"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string/jumbo v2, "sa"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "bo"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "guai"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string/jumbo v2, "shan"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "chan"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "di"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "die"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "jia"

    aput-object v4, v0, v1

    const/16 v1, 0xb0

    const-string/jumbo v2, "ma"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string/jumbo v2, "zuo"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "cuan"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "dui"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string/jumbo v2, "shuo"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string/jumbo v2, "wu"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string/jumbo v2, "mo"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string/jumbo v2, "pu"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string/jumbo v2, "pu"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string/jumbo v2, "zeng"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string v2, "chao"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string/jumbo v2, "qi"

    aput-object v5, v0, v1

    const/16 v1, 0xbc

    const-string/jumbo v2, "shu"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string/jumbo v2, "piao"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string v2, "biao"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string v2, "ju"

    aput-object v7, v0, v1

    const/16 v1, 0xc0

    const-string/jumbo v2, "tuo"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string v2, "bai"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const-string v2, "gui"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string/jumbo v2, "zha"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string/jumbo v2, "zha"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string/jumbo v2, "shan"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string/jumbo v2, "yue"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string/jumbo v2, "xi"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    const-string v2, "kuo"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string v2, "jiao"

    aput-object v3, v0, v1

    const/16 v1, 0xca

    const-string v2, "hu"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const-string v2, "heng"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const-string v2, "ju"

    aput-object v7, v0, v1

    const/16 v1, 0xcd

    const-string v2, "hui"

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const-string/jumbo v2, "sao"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const-string v2, "ling"

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    const-string/jumbo v2, "zhen"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const-string v2, "cha"

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    const-string v2, "kan"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const-string v2, "bing"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const-string/jumbo v2, "se"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const-string/jumbo v2, "mu"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const-string v2, "deng"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const-string/jumbo v2, "xi"

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const-string/jumbo v2, "shi"

    aput-object v6, v0, v1

    const/16 v1, 0xd9

    const-string/jumbo v2, "yan"

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const-string/jumbo v2, "zhi"

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    const-string/jumbo v2, "meng"

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const-string/jumbo v2, "tun"

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    const-string/jumbo v2, "shang"

    aput-object v2, v0, v1

    const/16 v1, 0xde

    const-string/jumbo v2, "shen"

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const-string/jumbo v2, "zhuan"

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    const-string/jumbo v2, "mo"

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const-string/jumbo v2, "po"

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const-string v2, "bi"

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    const-string/jumbo v2, "shuang"

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    const-string/jumbo v2, "pa"

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    const-string v2, "jian"

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    const-string v2, "hui"

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    const-string/jumbo v2, "xu"

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    const-string/jumbo v2, "xun"

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    const-string v2, "chong"

    aput-object v2, v0, v1

    const/16 v1, 0xea

    const-string v2, "guo"

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    const-string/jumbo v2, "sheng"

    aput-object v2, v0, v1

    const/16 v1, 0xec

    const-string v2, "jiao"

    aput-object v3, v0, v1

    const/16 v1, 0xed

    const-string/jumbo v2, "yan"

    aput-object v2, v0, v1

    const/16 v1, 0xee

    const-string v2, "hui"

    aput-object v2, v0, v1

    const/16 v1, 0xef

    const-string/jumbo v2, "niao"

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    const-string v2, "luo"

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    const-string v2, "lao"

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    const-string v2, "deng"

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    const-string v2, "bao"

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    const-string v2, "gui"

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    const-string/jumbo v2, "que"

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    const-string v2, "bao"

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    const-string v2, "lao"

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    const-string/jumbo v2, "yin"

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    const-string/jumbo v2, "tao"

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    const-string/jumbo v2, "shu"

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    const-string/jumbo v2, "yu"

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    const-string/jumbo v2, "zhao"

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    const-string/jumbo v2, "mu"

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    const-string/jumbo v2, "qian"

    aput-object v2, v0, v1

    const/16 v1, 0xff

    const-string v2, "han"

    aput-object v2, v0, v1

    const/16 v1, 0x100

    const-string v2, "jia"

    aput-object v4, v0, v1

    const/16 v1, 0x101

    const-string/jumbo v2, "shuai"

    aput-object v2, v0, v1

    const/16 v1, 0x102

    const-string/jumbo v2, "min"

    aput-object v2, v0, v1

    const/16 v1, 0x103

    const-string v2, "fen"

    aput-object v2, v0, v1

    const/16 v1, 0x104

    const-string v2, "hui"

    aput-object v2, v0, v1

    const/16 v1, 0x105

    const-string/jumbo v2, "zuo"

    aput-object v2, v0, v1

    const/16 v1, 0x106

    const-string/jumbo v2, "she"

    aput-object v2, v0, v1

    const/16 v1, 0x107

    const-string v2, "ding"

    aput-object v2, v0, v1

    const/16 v1, 0x108

    const-string/jumbo v2, "pan"

    aput-object v2, v0, v1

    const/16 v1, 0x109

    const-string/jumbo v2, "shu"

    aput-object v2, v0, v1

    const/16 v1, 0x10a

    const-string/jumbo v2, "yao"

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    const-string v2, "da"

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    const-string/jumbo v2, "zha"

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    const-string v2, "cuo"

    aput-object v2, v0, v1

    const/16 v1, 0x10e

    const-string v2, "bo"

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    const-string v2, "di"

    aput-object v2, v0, v1

    const/16 v1, 0x110

    const-string v2, "huan"

    aput-object v2, v0, v1

    const/16 v1, 0x111

    const-string v2, "cheng"

    aput-object v2, v0, v1

    const/16 v1, 0x112

    const-string/jumbo v2, "xing"

    aput-object v2, v0, v1

    const/16 v1, 0x113

    const-string/jumbo v2, "zhe"

    aput-object v2, v0, v1

    const/16 v1, 0x114

    const-string v2, "ju"

    aput-object v7, v0, v1

    const/16 v1, 0x115

    const-string v2, "guan"

    aput-object v2, v0, v1

    const/16 v1, 0x116

    const-string v2, "jia"

    aput-object v4, v0, v1

    const/16 v1, 0x117

    const-string v2, "dan"

    aput-object v2, v0, v1

    const/16 v1, 0x118

    const-string/jumbo v2, "xu"

    aput-object v2, v0, v1

    const/16 v1, 0x119

    const-string/jumbo v2, "qie"

    aput-object v2, v0, v1

    const/16 v1, 0x11a

    const-string v2, "fu"

    aput-object v2, v0, v1

    const/16 v1, 0x11b

    const-string v2, "la"

    aput-object v2, v0, v1

    const/16 v1, 0x11c

    const-string v2, "dong"

    aput-object v2, v0, v1

    const/16 v1, 0x11d

    const-string/jumbo v2, "pang"

    aput-object v2, v0, v1

    const/16 v1, 0x11e

    const-string/jumbo v2, "ni"

    aput-object v2, v0, v1

    const/16 v1, 0x11f

    const-string/jumbo v2, "zhai"

    aput-object v2, v0, v1

    const/16 v1, 0x120

    const-string v2, "chan"

    aput-object v2, v0, v1

    const/16 v1, 0x121

    const-string/jumbo v2, "zhong"

    aput-object v2, v0, v1

    const/16 v1, 0x122

    const-string v2, "bi"

    aput-object v2, v0, v1

    const/16 v1, 0x123

    const-string v2, "chen"

    aput-object v2, v0, v1

    const/16 v1, 0x124

    const-string v2, "chen"

    aput-object v2, v0, v1

    const/16 v1, 0x125

    const-string/jumbo v2, "qi"

    aput-object v5, v0, v1

    const/16 v1, 0x126

    const-string/jumbo v2, "zuo"

    aput-object v2, v0, v1

    const/16 v1, 0x127

    const-string v2, "jun"

    aput-object v2, v0, v1

    const/16 v1, 0x128

    const-string/jumbo v2, "zhan"

    aput-object v2, v0, v1

    const/16 v1, 0x129

    const-string v2, "ci"

    aput-object v2, v0, v1

    const/16 v1, 0x12a

    const-string/jumbo v2, "yu"

    aput-object v2, v0, v1

    const/16 v1, 0x12b

    const-string/jumbo v2, "shen"

    aput-object v2, v0, v1

    const/16 v1, 0x12c

    const-string/jumbo v2, "mei"

    aput-object v2, v0, v1

    const/16 v1, 0x12d

    const-string v2, "ji"

    aput-object v2, v0, v1

    const/16 v1, 0x12e

    const-string/jumbo v2, "qing"

    aput-object v2, v0, v1

    const/16 v1, 0x12f

    const-string/jumbo v2, "po"

    aput-object v2, v0, v1

    const/16 v1, 0x130

    const-string/jumbo v2, "yao"

    aput-object v2, v0, v1

    const/16 v1, 0x131

    const-string v2, "gong"

    aput-object v2, v0, v1

    const/16 v1, 0x132

    const-string v2, "ge"

    aput-object v2, v0, v1

    const/16 v1, 0x133

    const-string/jumbo v2, "yao"

    aput-object v2, v0, v1

    const/16 v1, 0x134

    const-string v2, "guan"

    aput-object v2, v0, v1

    const/16 v1, 0x135

    const-string v2, "lao"

    aput-object v2, v0, v1

    const/16 v1, 0x136

    const-string v2, "jia"

    aput-object v4, v0, v1

    const/16 v1, 0x137

    const-string/jumbo v2, "zong"

    aput-object v2, v0, v1

    const/16 v1, 0x138

    const-string/jumbo v2, "qi"

    aput-object v5, v0, v1

    const/16 v1, 0x139

    const-string/jumbo v2, "pian"

    aput-object v2, v0, v1

    const/16 v1, 0x13a

    const-string/jumbo v2, "su"

    aput-object v2, v0, v1

    const/16 v1, 0x13b

    const-string/jumbo v2, "miao"

    aput-object v2, v0, v1

    const/16 v1, 0x13c

    const-string v2, "jia"

    aput-object v4, v0, v1

    const/16 v1, 0x13d

    const-string/jumbo v2, "zhai"

    aput-object v2, v0, v1

    const/16 v1, 0x13e

    const-string v2, "ba"

    aput-object v2, v0, v1

    const/16 v1, 0x13f

    const-string v2, "ding"

    aput-object v2, v0, v1

    const/16 v1, 0x140

    const-string v2, "lei"

    aput-object v2, v0, v1

    const/16 v1, 0x141

    const-string/jumbo v2, "pan"

    aput-object v2, v0, v1

    const/16 v1, 0x142

    const-string/jumbo v2, "mo"

    aput-object v2, v0, v1

    const/16 v1, 0x143

    const-string v2, "jia"

    aput-object v4, v0, v1

    const/16 v1, 0x144

    const-string/jumbo v2, "pu"

    aput-object v2, v0, v1

    const/16 v1, 0x145

    const-string/jumbo v2, "xi"

    aput-object v2, v0, v1

    const/16 v1, 0x146

    const-string/jumbo v2, "yan"

    aput-object v2, v0, v1

    const/16 v1, 0x147

    const-string/jumbo v2, "pang"

    aput-object v2, v0, v1

    const/16 v1, 0x148

    const-string v2, "bei"

    aput-object v2, v0, v1

    const/16 v1, 0x149

    const-string/jumbo v2, "xiu"

    aput-object v2, v0, v1

    const/16 v1, 0x14a

    const-string v2, "bo"

    aput-object v2, v0, v1

    const/16 v1, 0x14b

    const-string/jumbo v2, "tuo"

    aput-object v2, v0, v1

    const/16 v1, 0x14c

    const-string/jumbo v2, "shai"

    aput-object v2, v0, v1

    const/16 v1, 0x14d

    const-string v2, "jiao"

    aput-object v3, v0, v1

    const/16 v1, 0x14e

    const-string/jumbo v2, "yi"

    aput-object v2, v0, v1

    const/16 v1, 0x14f

    const-string/jumbo v2, "wang"

    aput-object v2, v0, v1

    const/16 v1, 0x150

    const-string v2, "fu"

    aput-object v2, v0, v1

    const/16 v1, 0x151

    const-string/jumbo v2, "shao"

    aput-object v2, v0, v1

    const/16 v1, 0x152

    const-string/jumbo v2, "qu"

    aput-object v2, v0, v1

    const/16 v1, 0x153

    const-string/jumbo v2, "pie"

    aput-object v2, v0, v1

    const/16 v1, 0x154

    const-string/jumbo v2, "re"

    aput-object v2, v0, v1

    const/16 v1, 0x155

    const-string/jumbo v2, "pin"

    aput-object v2, v0, v1

    const/16 v1, 0x156

    const-string v2, "jia"

    aput-object v4, v0, v1

    const/16 v1, 0x157

    const-string/jumbo v2, "xi"

    aput-object v2, v0, v1

    const/16 v1, 0x158

    const-string/jumbo v2, "yi"

    aput-object v2, v0, v1

    const/16 v1, 0x159

    const-string v2, "ji"

    aput-object v2, v0, v1

    const/16 v1, 0x15a

    const-string/jumbo v2, "xun"

    aput-object v2, v0, v1

    const/16 v1, 0x15b

    const-string/jumbo v2, "xing"

    aput-object v2, v0, v1

    const/16 v1, 0x15c

    const-string/jumbo v2, "pu"

    aput-object v2, v0, v1

    const/16 v1, 0x15d

    const-string/jumbo v2, "suo"

    aput-object v2, v0, v1

    const/16 v1, 0x15e

    const-string/jumbo v2, "shen"

    aput-object v2, v0, v1

    const/16 v1, 0x15f

    const-string/jumbo v2, "wan"

    aput-object v2, v0, v1

    const/16 v1, 0x160

    const-string v2, "liang"

    aput-object v2, v0, v1

    const/16 v1, 0x161

    const-string/jumbo v2, "zu"

    aput-object v2, v0, v1

    const/16 v1, 0x162

    const-string v2, "bi"

    aput-object v2, v0, v1

    const/16 v1, 0x163

    const-string v2, "la"

    aput-object v2, v0, v1

    const/16 v1, 0x164

    const-string/jumbo v2, "ren"

    aput-object v2, v0, v1

    const/16 v1, 0x165

    const-string v2, "bang"

    aput-object v2, v0, v1

    const/16 v1, 0x166

    const-string v2, "la"

    aput-object v2, v0, v1

    const/16 v1, 0x167

    const-string/jumbo v2, "wan"

    aput-object v2, v0, v1

    const/16 v1, 0x168

    const-string/jumbo v2, "qiao"

    aput-object v2, v0, v1

    const/16 v1, 0x169

    const-string v2, "bao"

    aput-object v2, v0, v1

    const/16 v1, 0x16a

    const-string/jumbo v2, "zang"

    aput-object v2, v0, v1

    const/16 v1, 0x16b

    const-string v2, "jiang"

    aput-object v2, v0, v1

    const/16 v1, 0x16c

    const-string v2, "ha"

    aput-object v2, v0, v1

    const/16 v1, 0x16d

    const-string v2, "beng"

    aput-object v2, v0, v1

    const/16 v1, 0x16e

    const-string/jumbo v2, "yi"

    aput-object v2, v0, v1

    const/16 v1, 0x16f

    const-string/jumbo v2, "xiao"

    aput-object v2, v0, v1

    const/16 v1, 0x170

    const-string/jumbo v2, "yi"

    aput-object v2, v0, v1

    const/16 v1, 0x171

    const-string v2, "la"

    aput-object v2, v0, v1

    const/16 v1, 0x172

    const-string/jumbo v2, "wu"

    aput-object v2, v0, v1

    const/16 v1, 0x173

    const-string/jumbo v2, "xue"

    aput-object v2, v0, v1

    const/16 v1, 0x174

    const-string v2, "hang"

    aput-object v2, v0, v1

    const/16 v1, 0x175

    const-string v2, "cui"

    aput-object v2, v0, v1

    const/16 v1, 0x176

    const-string/jumbo v2, "pi"

    aput-object v2, v0, v1

    const/16 v1, 0x177

    const-string/jumbo v2, "qia"

    aput-object v2, v0, v1

    const/16 v1, 0x178

    const-string/jumbo v2, "pi"

    aput-object v2, v0, v1

    const/16 v1, 0x179

    const-string/jumbo v2, "shang"

    aput-object v2, v0, v1

    const/16 v1, 0x17a

    const-string/jumbo v2, "ti"

    aput-object v2, v0, v1

    const/16 v1, 0x17b

    const-string/jumbo v2, "zhu"

    aput-object v2, v0, v1

    const/16 v1, 0x17c

    const-string/jumbo v2, "tui"

    aput-object v2, v0, v1

    const/16 v1, 0x17d

    const-string/jumbo v2, "qin"

    aput-object v2, v0, v1

    const/16 v1, 0x17e

    const-string/jumbo v2, "xian"

    aput-object v2, v0, v1

    const/16 v1, 0x17f

    const-string v2, "jiao"

    aput-object v3, v0, v1

    const/16 v1, 0x180

    const-string v2, "jia"

    aput-object v4, v0, v1

    const/16 v1, 0x181

    const-string/jumbo v2, "zi"

    aput-object v2, v0, v1

    const/16 v1, 0x182

    const-string/jumbo v2, "xie"

    aput-object v2, v0, v1

    const/16 v1, 0x183

    const-string/jumbo v2, "shui"

    aput-object v2, v0, v1

    const/16 v1, 0x184

    const-string v2, "dou"

    aput-object v2, v0, v1

    const/16 v1, 0x185

    const-string/jumbo v2, "shei"

    aput-object v2, v0, v1

    const/16 v1, 0x186

    const-string/jumbo v2, "tiao"

    aput-object v2, v0, v1

    const/16 v1, 0x187

    const-string/jumbo v2, "mei"

    aput-object v2, v0, v1

    const/16 v1, 0x188

    const-string/jumbo v2, "yu"

    aput-object v2, v0, v1

    const/16 v1, 0x189

    const-string v2, "hua"

    aput-object v2, v0, v1

    const/16 v1, 0x18a

    const-string v2, "hao"

    aput-object v2, v0, v1

    const/16 v1, 0x18b

    const-string v2, "ben"

    aput-object v2, v0, v1

    const/16 v1, 0x18c

    const-string v2, "gu"

    aput-object v2, v0, v1

    const/16 v1, 0x18d

    const-string/jumbo v2, "zuan"

    aput-object v2, v0, v1

    const/16 v1, 0x18e

    const-string/jumbo v2, "qie"

    aput-object v2, v0, v1

    const/16 v1, 0x18f

    const-string v2, "cu"

    aput-object v2, v0, v1

    const/16 v1, 0x190

    const-string v2, "bo"

    aput-object v2, v0, v1

    const/16 v1, 0x191

    const-string v2, "die"

    aput-object v2, v0, v1

    const/16 v1, 0x192

    const-string/jumbo v2, "qi"

    aput-object v5, v0, v1

    const/16 v1, 0x193

    const-string v2, "cun"

    aput-object v2, v0, v1

    const/16 v1, 0x194

    const-string v2, "ju"

    aput-object v7, v0, v1

    const/16 v1, 0x195

    const-string/jumbo v2, "zha"

    aput-object v2, v0, v1

    const/16 v1, 0x196

    const-string/jumbo v2, "zhuai"

    aput-object v2, v0, v1

    const/16 v1, 0x197

    const-string v2, "bi"

    aput-object v2, v0, v1

    const/16 v1, 0x198

    const-string/jumbo v2, "zhei"

    aput-object v2, v0, v1

    const/16 v1, 0x199

    const-string/jumbo v2, "pai"

    aput-object v2, v0, v1

    const/16 v1, 0x19a

    const-string v2, "kuo"

    aput-object v2, v0, v1

    const/16 v1, 0x19b

    const-string/jumbo v2, "ye"

    aput-object v2, v0, v1

    const/16 v1, 0x19c

    const-string v2, "dou"

    aput-object v2, v0, v1

    const/16 v1, 0x19d

    const-string v2, "gan"

    aput-object v2, v0, v1

    const/16 v1, 0x19e

    const-string v2, "chong"

    aput-object v2, v0, v1

    const/16 v1, 0x19f

    const-string/jumbo v2, "yue"

    aput-object v2, v0, v1

    const/16 v1, 0x1a0

    const-string/jumbo v2, "pa"

    aput-object v2, v0, v1

    const/16 v1, 0x1a1

    const-string/jumbo v2, "tian"

    aput-object v2, v0, v1

    const/16 v1, 0x1a2

    const-string/jumbo v2, "yan"

    aput-object v2, v0, v1

    const/16 v1, 0x1a3

    const-string/jumbo v2, "tuo"

    aput-object v2, v0, v1

    const/16 v1, 0x1a4

    const-string v2, "cheng"

    aput-object v2, v0, v1

    const/16 v1, 0x1a5

    const-string/jumbo v2, "xi"

    aput-object v2, v0, v1

    const/16 v1, 0x1a6

    const-string v2, "ding"

    aput-object v2, v0, v1

    const/16 v1, 0x1a7

    const-string v2, "diao"

    aput-object v2, v0, v1

    const/16 v1, 0x1a8

    const-string v2, "gao"

    aput-object v2, v0, v1

    const/16 v1, 0x1a9

    const-string v2, "dun"

    aput-object v2, v0, v1

    const/16 v1, 0x1aa

    const-string/jumbo v2, "zhang"

    aput-object v2, v0, v1

    const/16 v1, 0x1ab

    const-string v2, "han"

    aput-object v2, v0, v1

    const/16 v1, 0x1ac

    const-string/jumbo v2, "yan"

    aput-object v2, v0, v1

    const/16 v1, 0x1ad

    const-string v2, "e"

    aput-object v2, v0, v1

    const/16 v1, 0x1ae

    const-string v2, "bei"

    aput-object v2, v0, v1

    const/16 v1, 0x1af

    const-string/jumbo v2, "xiang"

    aput-object v2, v0, v1

    const/16 v1, 0x1b0

    const-string/jumbo v2, "yao"

    aput-object v2, v0, v1

    const/16 v1, 0x1b1

    const-string v2, "juan"

    aput-object v2, v0, v1

    const/16 v1, 0x1b2

    const-string/jumbo v2, "qiao"

    aput-object v2, v0, v1

    const/16 v1, 0x1b3

    const-string/jumbo v2, "san"

    aput-object v2, v0, v1

    const/16 v1, 0x1b4

    const-string v2, "lou"

    aput-object v2, v0, v1

    const/16 v1, 0x1b5

    const-string v2, "ji"

    aput-object v2, v0, v1

    const/16 v1, 0x1b6

    const-string/jumbo v2, "shao"

    aput-object v2, v0, v1

    const/16 v1, 0x1b7

    const-string v2, "du"

    aput-object v2, v0, v1

    const/16 v1, 0x1b8

    const-string v2, "geng"

    aput-object v2, v0, v1

    const/16 v1, 0x1b9

    const-string/jumbo v2, "xie"

    aput-object v2, v0, v1

    const/16 v1, 0x1ba

    const-string v2, "chan"

    aput-object v2, v0, v1

    const/16 v1, 0x1bb

    const-string/jumbo v2, "si"

    aput-object v2, v0, v1

    const/16 v1, 0x1bc

    const-string/jumbo v2, "tang"

    aput-object v2, v0, v1

    const/16 v1, 0x1bd

    const-string v2, "jia"

    aput-object v4, v0, v1

    const/16 v1, 0x1be

    const-string v2, "duo"

    aput-object v2, v0, v1

    const/16 v1, 0x1bf

    const-string v2, "biao"

    aput-object v2, v0, v1

    const/16 v1, 0x1c0

    const-string/jumbo v2, "tuo"

    aput-object v2, v0, v1

    const/16 v1, 0x1c1

    const-string/jumbo v2, "zheng"

    aput-object v2, v0, v1

    const/16 v1, 0x1c2

    const-string v2, "gu"

    aput-object v2, v0, v1

    const/16 v1, 0x1c3

    const-string v2, "gu"

    aput-object v2, v0, v1

    const/16 v1, 0x1c4

    const-string/jumbo v2, "qun"

    aput-object v2, v0, v1

    const/16 v1, 0x1c5

    const-string/jumbo v2, "mian"

    aput-object v2, v0, v1

    const/16 v1, 0x1c6

    const-string v2, "jun"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/internal/util/HanziToPinyin$DuoyinziStructure;->s2ndDuoYinZiPinyinSpell:[Ljava/lang/String;

    .line 1681
    return-void

    .line 308
    :array_0
    .array-data 0x4
        0x7t 0x4et 0x0t 0x0t
        0x14t 0x4et 0x0t 0x0t
        0x50t 0x4et 0x0t 0x0t
        0x58t 0x4et 0x0t 0x0t
        0x5ct 0x4et 0x0t 0x0t
        0x7et 0x4et 0x0t 0x0t
        0x86t 0x4et 0x0t 0x0t
        0xa1t 0x4et 0x0t 0x0t
        0xb2t 0x4et 0x0t 0x0t
        0xc0t 0x4et 0x0t 0x0t
        0xc7t 0x4et 0x0t 0x0t
        0xe1t 0x4et 0x0t 0x0t
        0x1at 0x4ft 0x0t 0x0t
        0x27t 0x4ft 0x0t 0x0t
        0x2ft 0x4ft 0x0t 0x0t
        0x3at 0x4ft 0x0t 0x0t
        0x3ct 0x4ft 0x0t 0x0t
        0x3dt 0x4ft 0x0t 0x0t
        0x5bt 0x4ft 0x0t 0x0t
        0x74t 0x4ft 0x0t 0x0t
        0x7ct 0x4ft 0x0t 0x0t
        0xa5t 0x4ft 0x0t 0x0t
        0xbft 0x4ft 0x0t 0x0t
        0xdft 0x4ft 0x0t 0x0t
        0xe9t 0x4ft 0x0t 0x0t
        0x18t 0x50t 0x0t 0x0t
        0x48t 0x50t 0x0t 0x0t
        0x7bt 0x50t 0x0t 0x0t
        0x80t 0x50t 0x0t 0x0t
        0x6dt 0x51t 0x0t 0x0t
        0x92t 0x51t 0x0t 0x0t
        0xaft 0x51t 0x0t 0x0t
        0xf9t 0x51t 0x0t 0x0t
        0xfft 0x51t 0x0t 0x0t
        0x28t 0x52t 0x0t 0x0t
        0x38t 0x52t 0x0t 0x0t
        0x39t 0x52t 0x0t 0x0t
        0x4at 0x52t 0x0t 0x0t
        0x61t 0x52t 0x0t 0x0t
        0x65t 0x52t 0x0t 0x0t
        0x7ft 0x52t 0x0t 0x0t
        0xb2t 0x52t 0x0t 0x0t
        0xd2t 0x52t 0x0t 0x0t
        0x19t 0x53t 0x0t 0x0t
        0x52t 0x53t 0x0t 0x0t
        0x55t 0x53t 0x0t 0x0t
        0x57t 0x53t 0x0t 0x0t
        0x61t 0x53t 0x0t 0x0t
        0xa6t 0x53t 0x0t 0x0t
        0xc2t 0x53t 0x0t 0x0t
        0xe8t 0x53t 0x0t 0x0t
        0xf6t 0x53t 0x0t 0x0t
        0x1t 0x54t 0x0t 0x0t
        0x13t 0x54t 0x0t 0x0t
        0x21t 0x54t 0x0t 0x0t
        0x26t 0x54t 0x0t 0x0t
        0x2dt 0x54t 0x0t 0x0t
        0x31t 0x54t 0x0t 0x0t
        0x57t 0x54t 0x0t 0x0t
        0x58t 0x54t 0x0t 0x0t
        0x62t 0x54t 0x0t 0x0t
        0x75t 0x54t 0x0t 0x0t
        0x80t 0x54t 0x0t 0x0t
        0x8bt 0x54t 0x0t 0x0t
        0x8ct 0x54t 0x0t 0x0t
        0xaft 0x54t 0x0t 0x0t
        0xb3t 0x54t 0x0t 0x0t
        0xbdt 0x54t 0x0t 0x0t
        0xe6t 0x54t 0x0t 0x0t
        0xeat 0x54t 0x0t 0x0t
        0x2ct 0x55t 0x0t 0x0t
        0x3ct 0x55t 0x0t 0x0t
        0x41t 0x55t 0x0t 0x0t
        0x5ct 0x55t 0x0t 0x0t
        0x8bt 0x55t 0x0t 0x0t
        0x94t 0x55t 0x0t 0x0t
        0xb3t 0x55t 0x0t 0x0t
        0xc4t 0x55t 0x0t 0x0t
        0xcct 0x55t 0x0t 0x0t
        0xe8t 0x55t 0x0t 0x0t
        0xft 0x56t 0x0t 0x0t
        0x18t 0x56t 0x0t 0x0t
        0x2ct 0x56t 0x0t 0x0t
        0x32t 0x56t 0x0t 0x0t
        0x3ft 0x56t 0x0t 0x0t
        0x4ct 0x56t 0x0t 0x0t
        0x71t 0x56t 0x0t 0x0t
        0x93t 0x56t 0x0t 0x0t
        0xa3t 0x56t 0x0t 0x0t
        0xbct 0x56t 0x0t 0x0t
        0xddt 0x56t 0x0t 0x0t
        0xe4t 0x56t 0x0t 0x0t
        0x8t 0x57t 0x0t 0x0t
        0x1ct 0x57t 0x0t 0x0t
        0x29t 0x57t 0x0t 0x0t
        0x30t 0x57t 0x0t 0x0t
        0x4ft 0x57t 0x0t 0x0t
        0x7bt 0x57t 0x0t 0x0t
        0xcbt 0x57t 0x0t 0x0t
        0xd4t 0x57t 0x0t 0x0t
        0x15t 0x58t 0x0t 0x0t
        0x21t 0x58t 0x0t 0x0t
        0x54t 0x58t 0x0t 0x0t
        0x5et 0x58t 0x0t 0x0t
        0xf3t 0x58t 0x0t 0x0t
        0x27t 0x59t 0x0t 0x0t
        0x2ft 0x59t 0x0t 0x0t
        0x47t 0x59t 0x0t 0x0t
        0x51t 0x59t 0x0t 0x0t
        0x58t 0x59t 0x0t 0x0t
        0xe5t 0x59t 0x0t 0x0t
        0x1ct 0x5at 0x0t 0x0t
        0x29t 0x5at 0x0t 0x0t
        0x6ct 0x5bt 0x0t 0x0t
        0x71t 0x5bt 0x0t 0x0t
        0xbft 0x5bt 0x0t 0x0t
        0x9t 0x5ct 0x0t 0x0t
        0x3at 0x5ct 0x0t 0x0t
        0x3et 0x5ct 0x0t 0x0t
        0x3ft 0x5ct 0x0t 0x0t
        0x4ft 0x5ct 0x0t 0x0t
        0x5et 0x5ct 0x0t 0x0t
        0x6ft 0x5ct 0x0t 0x0t
        0x79t 0x5ct 0x0t 0x0t
        0xd9t 0x5ct 0x0t 0x0t
        0xe4t 0x5ct 0x0t 0x0t
        0x34t 0x5dt 0x0t 0x0t
        0xeet 0x5dt 0x0t 0x0t
        0xf7t 0x5dt 0x0t 0x0t
        0x31t 0x5et 0x0t 0x0t
        0x62t 0x5et 0x0t 0x0t
        0x95t 0x5et 0x0t 0x0t
        0xa6t 0x5et 0x0t 0x0t
        0xd1t 0x5et 0x0t 0x0t
        0x4t 0x5ft 0x0t 0x0t
        0x39t 0x5ft 0x0t 0x0t
        0x77t 0x5ft 0x0t 0x0t
        0x8at 0x5ft 0x0t 0x0t
        0x97t 0x5ft 0x0t 0x0t
        0xb5t 0x5ft 0x0t 0x0t
        0xd2t 0x5ft 0x0t 0x0t
        0xeat 0x5ft 0x0t 0x0t
        0xet 0x60t 0x0t 0x0t
        0x1dt 0x60t 0x0t 0x0t
        0x6bt 0x60t 0x0t 0x0t
        0x76t 0x60t 0x0t 0x0t
        0xddt 0x60t 0x0t 0x0t
        0x4at 0x61t 0x0t 0x0t
        0x6t 0x62t 0x0t 0x0t
        0xct 0x62t 0x0t 0x0t
        0xft 0x62t 0x0t 0x0t
        0x41t 0x62t 0x0t 0x0t
        0x4et 0x62t 0x0t 0x0t
        0x52t 0x62t 0x0t 0x0t
        0x5bt 0x62t 0x0t 0x0t
        0x73t 0x62t 0x0t 0x0t
        0x98t 0x62t 0x0t 0x0t
        0xb9t 0x62t 0x0t 0x0t
        0xc2t 0x62t 0x0t 0x0t
        0xc6t 0x62t 0x0t 0x0t
        0xd3t 0x62t 0x0t 0x0t
        0xd7t 0x62t 0x0t 0x0t
        0xe9t 0x62t 0x0t 0x0t
        0xect 0x62t 0x0t 0x0t
        0xf6t 0x62t 0x0t 0x0t
        0xfet 0x62t 0x0t 0x0t
        0xet 0x63t 0x0t 0x0t
        0x1dt 0x63t 0x0t 0x0t
        0x32t 0x63t 0x0t 0x0t
        0xb0t 0x63t 0x0t 0x0t
        0xb4t 0x63t 0x0t 0x0t
        0xb8t 0x63t 0x0t 0x0t
        0xbat 0x63t 0x0t 0x0t
        0xd0t 0x63t 0x0t 0x0t
        0xf2t 0x63t 0x0t 0x0t
        0x5t 0x64t 0x0t 0x0t
        0x69t 0x64t 0x0t 0x0t
        0xaet 0x64t 0x0t 0x0t
        0x12t 0x65t 0x0t 0x0t
        0x66t 0x65t 0x0t 0x0t
        0x70t 0x65t 0x0t 0x0t
        0xbct 0x65t 0x0t 0x0t
        0xe0t 0x65t 0x0t 0x0t
        0xb4t 0x66t 0x0t 0x0t
        0xddt 0x66t 0x0t 0x0t
        0xfet 0x66t 0x0t 0x0t
        0x1dt 0x67t 0x0t 0x0t
        0x1ft 0x67t 0x0t 0x0t
        0x2ft 0x67t 0x0t 0x0t
        0x34t 0x67t 0x0t 0x0t
        0x53t 0x67t 0x0t 0x0t
        0xb8t 0x67t 0x0t 0x0t
        0xc1t 0x67t 0x0t 0x0t
        0xcft 0x67t 0x0t 0x0t
        0xdct 0x67t 0x0t 0x0t
        0xdet 0x67t 0x0t 0x0t
        0xe5t 0x67t 0x0t 0x0t
        0x5t 0x68t 0x0t 0x0t
        0xet 0x68t 0x0t 0x0t
        0x16t 0x68t 0x0t 0x0t
        0x1dt 0x68t 0x0t 0x0t
        0x21t 0x68t 0x0t 0x0t
        0x38t 0x68t 0x0t 0x0t
        0x41t 0x68t 0x0t 0x0t
        0x54t 0x68t 0x0t 0x0t
        0x67t 0x68t 0x0t 0x0t
        0xa2t 0x68t 0x0t 0x0t
        0xf1t 0x68t 0x0t 0x0t
        0x39t 0x69t 0x0t 0x0t
        0x42t 0x69t 0x0t 0x0t
        0xdbt 0x69t 0x0t 0x0t
        0xdft 0x69t 0x0t 0x0t
        0xedt 0x69t 0x0t 0x0t
        0x21t 0x6at 0x0t 0x0t
        0x59t 0x6at 0x0t 0x0t
        0x59t 0x6bt 0x0t 0x0t
        0x96t 0x6bt 0x0t 0x0t
        0xb7t 0x6bt 0x0t 0x0t
        0xft 0x6ct 0x0t 0x0t
        0x13t 0x6ct 0x0t 0x0t
        0x46t 0x6ct 0x0t 0x0t
        0x64t 0x6ct 0x0t 0x0t
        0x88t 0x6ct 0x0t 0x0t
        0x8ct 0x6ct 0x0t 0x0t
        0xa1t 0x6ct 0x0t 0x0t
        0xcat 0x6ct 0x0t 0x0t
        0xcct 0x6ct 0x0t 0x0t
        0xf7t 0x6ct 0x0t 0x0t
        0x3et 0x6dt 0x0t 0x0t
        0x45t 0x6dt 0x0t 0x0t
        0x4dt 0x6dt 0x0t 0x0t
        0x52t 0x6dt 0x0t 0x0t
        0x5at 0x6dt 0x0t 0x0t
        0x8ct 0x6dt 0x0t 0x0t
        0xa1t 0x6dt 0x0t 0x0t
        0x11t 0x6et 0x0t 0x0t
        0x6bt 0x6et 0x0t 0x0t
        0x6et 0x6et 0x0t 0x0t
        0x83t 0x6et 0x0t 0x0t
        0xbat 0x6et 0x0t 0x0t
        0x2ft 0x6ft 0x0t 0x0t
        0x66t 0x6ft 0x0t 0x0t
        0x84t 0x6ft 0x0t 0x0t
        0x11t 0x70t 0x0t 0x0t
        0x85t 0x70t 0x0t 0x0t
        0x94t 0x70t 0x0t 0x0t
        0xaet 0x70t 0x0t 0x0t
        0xd9t 0x70t 0x0t 0x0t
        0xdft 0x70t 0x0t 0x0t
        0x18t 0x71t 0x0t 0x0t
        0x9ft 0x71t 0x0t 0x0t
        0xa8t 0x71t 0x0t 0x0t
        0x2at 0x72t 0x0t 0x0t
        0x5ft 0x72t 0x0t 0x0t
        0x8dt 0x72t 0x0t 0x0t
        0xb4t 0x72t 0x0t 0x0t
        0xe1t 0x72t 0x0t 0x0t
        0x87t 0x73t 0x0t 0x0t
        0x9ft 0x73t 0x0t 0x0t
        0xa2t 0x73t 0x0t 0x0t
        0xf2t 0x73t 0x0t 0x0t
        0x22t 0x74t 0x0t 0x0t
        0x1at 0x75t 0x0t 0x0t
        0x3at 0x75t 0x0t 0x0t
        0x6at 0x75t 0x0t 0x0t
        0x8bt 0x75t 0x0t 0x0t
        0x9ft 0x75t 0x0t 0x0t
        0xb8t 0x75t 0x0t 0x0t
        0xc4t 0x75t 0x0t 0x0t
        0x25t 0x76t 0x0t 0x0t
        0x7et 0x76t 0x0t 0x0t
        0x84t 0x76t 0x0t 0x0t
        0x96t 0x76t 0x0t 0x0t
        0xdbt 0x76t 0x0t 0x0t
        0x1t 0x77t 0x0t 0x0t
        0x40t 0x77t 0x0t 0x0t
        0xbft 0x77t 0x0t 0x0t
        0xdct 0x77t 0x0t 0x0t
        0xebt 0x77t 0x0t 0x0t
        0xf3t 0x77t 0x0t 0x0t
        0x9t 0x78t 0x0t 0x0t
        0xct 0x78t 0x0t 0x0t
        0x29t 0x78t 0x0t 0x0t
        0x2ct 0x78t 0x0t 0x0t
        0x50t 0x78t 0x0t 0x0t
        0xc5t 0x78t 0x0t 0x0t
        0x62t 0x79t 0x0t 0x0t
        0x6dt 0x79t 0x0t 0x0t
        0x85t 0x79t 0x0t 0x0t
        0xcdt 0x79t 0x0t 0x0t
        0xd8t 0x79t 0x0t 0x0t
        0xe4t 0x79t 0x0t 0x0t
        0xf0t 0x79t 0x0t 0x0t
        0x3dt 0x7at 0x0t 0x0t
        0x2et 0x7bt 0x0t 0x0t
        0x60t 0x7bt 0x0t 0x0t
        0x98t 0x7ct 0x0t 0x0t
        0xa2t 0x7ct 0x0t 0x0t
        0xa5t 0x7ct 0x0t 0x0t
        0xc1t 0x7ct 0x0t 0x0t
        0xdct 0x7ct 0x0t 0x0t
        0xfbt 0x7ct 0x0t 0x0t
        0xaet 0x7dt 0x0t 0x0t
        0x41t 0x7et 0x0t 0x0t
        0x47t 0x7et 0x0t 0x0t
        0xa2t 0x7et 0x0t 0x0t
        0xa5t 0x7et 0x0t 0x0t
        0xa6t 0x7et 0x0t 0x0t
        0xb6t 0x7et 0x0t 0x0t
        0xdct 0x7et 0x0t 0x0t
        0xdet 0x7et 0x0t 0x0t
        0xfct 0x7et 0x0t 0x0t
        0x9t 0x7ft 0x0t 0x0t
        0xft 0x7ft 0x0t 0x0t
        0x29t 0x7ft 0x0t 0x0t
        0x2at 0x7ft 0x0t 0x0t
        0x34t 0x7ft 0x0t 0x0t
        0xdft 0x7ft 0x0t 0x0t
        0x19t 0x80t 0x0t 0x0t
        0x35t 0x80t 0x0t 0x0t
        0x8bt 0x80t 0x0t 0x0t
        0xd6t 0x80t 0x0t 0x0t
        0x9t 0x81t 0x0t 0x0t
        0x1at 0x81t 0x0t 0x0t
        0x2ft 0x81t 0x0t 0x0t
        0x4at 0x81t 0x0t 0x0t
        0x4ct 0x81t 0x0t 0x0t
        0x80t 0x81t 0x0t 0x0t
        0xc2t 0x81t 0x0t 0x0t
        0xedt 0x81t 0x0t 0x0t
        0x2ct 0x82t 0x0t 0x0t
        0x35t 0x82t 0x0t 0x0t
        0x72t 0x82t 0x0t 0x0t
        0x7dt 0x82t 0x0t 0x0t
        0x7et 0x82t 0x0t 0x0t
        0x92t 0x82t 0x0t 0x0t
        0xbet 0x82t 0x0t 0x0t
        0xd5t 0x82t 0x0t 0x0t
        0xe3t 0x82t 0x0t 0x0t
        0xe4t 0x82t 0x0t 0x0t
        0xe5t 0x82t 0x0t 0x0t
        0xf9t 0x82t 0x0t 0x0t
        0x4t 0x83t 0x0t 0x0t
        0x1ct 0x83t 0x0t 0x0t
        0x51t 0x83t 0x0t 0x0t
        0x60t 0x83t 0x0t 0x0t
        0x64t 0x83t 0x0t 0x0t
        0x65t 0x83t 0x0t 0x0t
        0x86t 0x83t 0x0t 0x0t
        0x8et 0x83t 0x0t 0x0t
        0x98t 0x83t 0x0t 0x0t
        0x9et 0x83t 0x0t 0x0t
        0xa8t 0x83t 0x0t 0x0t
        0xf9t 0x83t 0x0t 0x0t
        0x6t 0x84t 0x0t 0x0t
        0x3dt 0x84t 0x0t 0x0t
        0x5at 0x84t 0x0t 0x0t
        0xa1t 0x84t 0x0t 0x0t
        0xddt 0x84t 0x0t 0x0t
        0x13t 0x85t 0x0t 0x0t
        0x49t 0x85t 0x0t 0x0t
        0x84t 0x85t 0x0t 0x0t
        0xcft 0x85t 0x0t 0x0t
        0x79t 0x86t 0x0t 0x0t
        0x7et 0x86t 0x0t 0x0t
        0x8ct 0x86t 0x0t 0x0t
        0xc7t 0x86t 0x0t 0x0t
        0xf8t 0x86t 0x0t 0x0t
        0xfet 0x86t 0x0t 0x0t
        0x21t 0x87t 0x0t 0x0t
        0x65t 0x87t 0x0t 0x0t
        0x40t 0x88t 0x0t 0x0t
        0x4ct 0x88t 0x0t 0x0t
        0x70t 0x88t 0x0t 0x0t
        0xabt 0x88t 0x0t 0x0t
        0xb7t 0x88t 0x0t 0x0t
        0xe8t 0x88t 0x0t 0x0t
        0xf3t 0x88t 0x0t 0x0t
        0xfct 0x88t 0x0t 0x0t
        0x1at 0x89t 0x0t 0x0t
        0x2at 0x89t 0x0t 0x0t
        0x83t 0x89t 0x0t 0x0t
        0xc1t 0x89t 0x0t 0x0t
        0xc9t 0x89t 0x0t 0x0t
        0xd2t 0x89t 0x0t 0x0t
        0xdct 0x89t 0x0t 0x0t
        0xe3t 0x89t 0x0t 0x0t
        0xf4t 0x8bt 0x0t 0x0t
        0xfbt 0x8bt 0x0t 0x0t
        0x1t 0x8ct 0x0t 0x0t
        0x3t 0x8ct 0x0t 0x0t
        0x1ct 0x8ct 0x0t 0x0t
        0x37t 0x8ct 0x0t 0x0t
        0x41t 0x8ct 0x0t 0x0t
        0x89t 0x8ct 0x0t 0x0t
        0x32t 0x8dt 0x0t 0x0t
        0x3et 0x8dt 0x0t 0x0t
        0x5at 0x8dt 0x0t 0x0t
        0x84t 0x8dt 0x0t 0x0t
        0xa3t 0x8dt 0x0t 0x0t
        0xb5t 0x8dt 0x0t 0x0t
        0x2et 0x8et 0x0t 0x0t
        0x4at 0x8et 0x0t 0x0t
        0x72t 0x8et 0x0t 0x0t
        0x66t 0x8ft 0x0t 0x0t
        0x67t 0x8ft 0x0t 0x0t
        0x6ct 0x8ft 0x0t 0x0t
        0x9ft 0x8ft 0x0t 0x0t
        0xd9t 0x8ft 0x0t 0x0t
        0xebt 0x8ft 0x0t 0x0t
        0x2t 0x90t 0x0t 0x0t
        0xaat 0x90t 0x0t 0x0t
        0xfdt 0x90t 0x0t 0x0t
        0x50t 0x91t 0x0t 0x0t
        0xcdt 0x91t 0x0t 0x0t
        0xa5t 0x94t 0x0t 0x0t
        0xaft 0x94t 0x0t 0x0t
        0xbft 0x94t 0x0t 0x0t
        0xc5t 0x94t 0x0t 0x0t
        0xcat 0x94t 0x0t 0x0t
        0xdbt 0x94t 0x0t 0x0t
        0xe3t 0x94t 0x0t 0x0t
        0xe4t 0x94t 0x0t 0x0t
        0xebt 0x94t 0x0t 0x0t
        0x50t 0x95t 0x0t 0x0t
        0x66t 0x95t 0x0t 0x0t
        0x7ft 0x95t 0x0t 0x0t
        0x1at 0x96t 0x0t 0x0t
        0x3dt 0x96t 0x0t 0x0t
        0x3ft 0x96t 0x0t 0x0t
        0x42t 0x96t 0x0t 0x0t
        0x4dt 0x96t 0x0t 0x0t
        0x76t 0x96t 0x0t 0x0t
        0xbdt 0x96t 0x0t 0x0t
        0xc0t 0x96t 0x0t 0x0t
        0x30t 0x97t 0x0t 0x0t
        0x32t 0x97t 0x0t 0x0t
        0x69t 0x97t 0x0t 0x0t
        0x98t 0x97t 0x0t 0x0t
        0x7ft 0x98t 0x0t 0x0t
        0x88t 0x98t 0x0t 0x0t
        0x89t 0x98t 0x0t 0x0t
        0xa4t 0x98t 0x0t 0x0t
        0xdft 0x98t 0x0t 0x0t
        0x67t 0x99t 0x0t 0x0t
        0x7at 0x99t 0x0t 0x0t
        0x6et 0x9at 0x0t 0x0t
        0xa0t 0x9at 0x0t 0x0t
        0x44t 0x9bt 0x0t 0x0t
        0xadt 0x9ct 0x0t 0x0t
        0x44t 0x9et 0x0t 0x0t
        0x58t 0x9et 0x0t 0x0t
        0x87t 0x9et 0x0t 0x0t
        0xfet 0x9et 0x0t 0x0t
        0x9ft 0x9ft 0x0t 0x0t
    .end array-data
.end method
