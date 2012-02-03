.class public Landroid/text/method/QwertyKeyListener;
.super Landroid/text/method/BaseKeyListener;
.source "QwertyKeyListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/QwertyKeyListener$Replaced;
    }
.end annotation


# static fields
.field private static PICKER_SETS:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:[Landroid/text/method/QwertyKeyListener;


# instance fields
.field private mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

.field private mAutoText:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    invoke-static {}, Landroid/text/method/TextKeyListener$Capitalize;->values()[Landroid/text/method/TextKeyListener$Capitalize;

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Landroid/text/method/QwertyKeyListener;

    sput-object v0, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    .line 456
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 459
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x41

    const-string/jumbo v2, "\u00c0\u00c1\u00c2\u00c4\u00c6\u00c3\u00c5\u0104\u0100"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 460
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x43

    const-string/jumbo v2, "\u00c7\u0106\u010c"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 461
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x44

    const-string/jumbo v2, "\u010e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 462
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x45

    const-string/jumbo v2, "\u00c8\u00c9\u00ca\u00cb\u0118\u011a\u0112"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 463
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x47

    const-string/jumbo v2, "\u011e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 464
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x4c

    const-string/jumbo v2, "\u0141"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 465
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x49

    const-string/jumbo v2, "\u00cc\u00cd\u00ce\u00cf\u012a\u0130"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 466
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x4e

    const-string/jumbo v2, "\u00d1\u0143\u0147"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 467
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x4f

    const-string/jumbo v2, "\u00d8\u0152\u00d5\u00d2\u00d3\u00d4\u00d6\u014c"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 468
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x52

    const-string/jumbo v2, "\u0158"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 469
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x53

    const-string/jumbo v2, "\u015a\u0160\u015e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 470
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x54

    const-string/jumbo v2, "\u0164"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 471
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x55

    const-string/jumbo v2, "\u00d9\u00da\u00db\u00dc\u016e\u016a"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 472
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x59

    const-string/jumbo v2, "\u00dd\u0178"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 473
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x5a

    const-string/jumbo v2, "\u0179\u017b\u017d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 474
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x61

    const-string/jumbo v2, "\u00e0\u00e1\u00e2\u00e4\u00e6\u00e3\u00e5\u0105\u0101"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 475
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x63

    const-string/jumbo v2, "\u00e7\u0107\u010d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 476
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x64

    const-string/jumbo v2, "\u010f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 477
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x65

    const-string/jumbo v2, "\u00e8\u00e9\u00ea\u00eb\u0119\u011b\u0113"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 478
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x67

    const-string/jumbo v2, "\u011f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 479
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x69

    const-string/jumbo v2, "\u00ec\u00ed\u00ee\u00ef\u012b\u0131"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 480
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x6c

    const-string/jumbo v2, "\u0142"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 481
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x6e

    const-string/jumbo v2, "\u00f1\u0144\u0148"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 482
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x6f

    const-string/jumbo v2, "\u00f8\u0153\u00f5\u00f2\u00f3\u00f4\u00f6\u014d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 483
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x72

    const-string/jumbo v2, "\u0159"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 484
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x73

    const-string/jumbo v2, "\u00a7\u00df\u015b\u0161\u015f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 485
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x74

    const-string/jumbo v2, "\u0165"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 486
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x75

    const-string/jumbo v2, "\u00f9\u00fa\u00fb\u00fc\u016f\u016b"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 487
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x79

    const-string/jumbo v2, "\u00fd\u00ff"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 488
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x7a

    const-string/jumbo v2, "\u017a\u017c\u017e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 489
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const v1, 0xef01

    const-string/jumbo v2, "\u2026\u00a5\u2022\u00ae\u00a9\u00b1[]{}\\|"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 491
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x2f

    const-string v2, "\\"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 495
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x31

    const-string/jumbo v2, "\u00b9\u00bd\u2153\u00bc\u215b"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 496
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x32

    const-string/jumbo v2, "\u00b2\u2154"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 497
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x33

    const-string/jumbo v2, "\u00b3\u00be\u215c"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 498
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x34

    const-string/jumbo v2, "\u2074"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 499
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x35

    const-string/jumbo v2, "\u215d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 500
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x37

    const-string/jumbo v2, "\u215e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 501
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x30

    const-string/jumbo v2, "\u207f\u2205"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 502
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x24

    const-string/jumbo v2, "\u00a2\u00a3\u20ac\u00a5\u20a3\u20a4\u20b1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 503
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x25

    const-string/jumbo v2, "\u2030"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 504
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x2a

    const-string/jumbo v2, "\u2020\u2021"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 505
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x2d

    const-string/jumbo v2, "\u2013\u2014"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 506
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x2b

    const-string/jumbo v2, "\u00b1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 507
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x28

    const-string v2, "[{<"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 508
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x29

    const-string v2, "]}>"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 509
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x21

    const-string/jumbo v2, "\u00a1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 510
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x22

    const-string/jumbo v2, "\u201c\u201d\u00ab\u00bb\u02dd"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 511
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x3f

    const-string/jumbo v2, "\u00bf"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 512
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x2c

    const-string/jumbo v2, "\u201a\u201e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 516
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x3d

    const-string/jumbo v2, "\u2260\u2248\u221e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 517
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x3c

    const-string/jumbo v2, "\u2264\u00ab\u2039"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 518
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const/16 v1, 0x3e

    const-string/jumbo v2, "\u2265\u00bb\u203a"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 519
    return-void
.end method

.method public constructor <init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V
    .locals 0
    .parameter "cap"
    .parameter "autotext"

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/text/method/BaseKeyListener;-><init>()V

    .line 42
    iput-object p1, p0, Landroid/text/method/QwertyKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    .line 43
    iput-boolean p2, p0, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    .line 44
    return-void
.end method

.method public static getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/QwertyKeyListener;
    .locals 3
    .parameter "autotext"
    .parameter "cap"

    .prologue
    .line 52
    invoke-virtual {p1}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    :goto_0
    add-int v0, v1, v2

    .line 54
    .local v0, off:I
    sget-object v1, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 55
    sget-object v1, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    new-instance v2, Landroid/text/method/QwertyKeyListener;

    invoke-direct {v2, p1, p0}, Landroid/text/method/QwertyKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V

    aput-object v2, v1, v0

    .line 58
    :cond_0
    sget-object v1, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    aget-object v1, v1, v0

    return-object v1

    .line 52
    .end local v0           #off:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getReplacement(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;
    .locals 10
    .parameter "src"
    .parameter "start"
    .parameter "end"
    .parameter "view"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 387
    sub-int v4, p3, p2

    .line 388
    .local v4, len:I
    const/4 v1, 0x0

    .line 390
    .local v1, changecase:Z
    invoke-static {p1, p2, p3, p4}, Landroid/text/AutoText;->get(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    move-result-object v6

    .line 392
    .local v6, replacement:Ljava/lang/String;
    if-nez v6, :cond_0

    .line 393
    invoke-static {p1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 394
    .local v3, key:Ljava/lang/String;
    sub-int v7, p3, p2

    invoke-static {v3, v8, v7, p4}, Landroid/text/AutoText;->get(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    move-result-object v6

    .line 395
    const/4 v1, 0x1

    .line 397
    if-nez v6, :cond_0

    move-object v7, v9

    .line 425
    .end local v3           #key:Ljava/lang/String;
    :goto_0
    return-object v7

    .line 401
    :cond_0
    const/4 v0, 0x0

    .line 403
    .local v0, caps:I
    if-eqz v1, :cond_2

    .line 404
    move v2, p2

    .local v2, j:I
    :goto_1
    if-ge v2, p3, :cond_2

    .line 405
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 406
    add-int/lit8 v0, v0, 0x1

    .line 404
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 412
    .end local v2           #j:I
    :cond_2
    if-nez v0, :cond_3

    .line 413
    move-object v5, v6

    .line 421
    .local v5, out:Ljava/lang/String;
    :goto_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v4, :cond_6

    invoke-static {p1, p2, v5, v8, v4}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v7

    if-eqz v7, :cond_6

    move-object v7, v9

    .line 423
    goto :goto_0

    .line 414
    .end local v5           #out:Ljava/lang/String;
    :cond_3
    const/4 v7, 0x1

    if-ne v0, v7, :cond_4

    .line 415
    invoke-static {v6}, Landroid/text/method/QwertyKeyListener;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #out:Ljava/lang/String;
    goto :goto_2

    .line 416
    .end local v5           #out:Ljava/lang/String;
    :cond_4
    if-ne v0, v4, :cond_5

    .line 417
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #out:Ljava/lang/String;
    goto :goto_2

    .line 419
    .end local v5           #out:Ljava/lang/String;
    :cond_5
    invoke-static {v6}, Landroid/text/method/QwertyKeyListener;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #out:Ljava/lang/String;
    goto :goto_2

    :cond_6
    move-object v7, v5

    .line 425
    goto :goto_0
.end method

.method public static markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V
    .locals 7
    .parameter "content"
    .parameter "start"
    .parameter "end"
    .parameter "original"

    .prologue
    const/4 v6, 0x0

    .line 443
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Landroid/text/method/QwertyKeyListener$Replaced;

    invoke-interface {p0, v6, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/method/QwertyKeyListener$Replaced;

    .line 444
    .local v3, repl:[Landroid/text/method/QwertyKeyListener$Replaced;
    const/4 v0, 0x0

    .local v0, a:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 445
    aget-object v4, v3, v0

    invoke-interface {p0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 444
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 448
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    .line 449
    .local v1, len:I
    new-array v2, v1, [C

    .line 450
    .local v2, orig:[C
    invoke-virtual {p3, v6, v1, v2, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 452
    new-instance v4, Landroid/text/method/QwertyKeyListener$Replaced;

    invoke-direct {v4, v2}, Landroid/text/method/QwertyKeyListener$Replaced;-><init>([C)V

    const/16 v5, 0x21

    invoke-interface {p0, v4, p1, p2, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 454
    return-void
.end method

.method private showCharacterPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z
    .locals 7
    .parameter "view"
    .parameter "content"
    .parameter "c"
    .parameter "insert"
    .parameter "count"

    .prologue
    const/4 v6, 0x1

    .line 523
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 524
    .local v4, set:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 525
    const/4 v0, 0x0

    .line 533
    :goto_0
    return v0

    .line 528
    :cond_0
    if-ne p5, v6, :cond_1

    .line 529
    new-instance v0, Landroid/text/method/CharacterPickerDialog;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/method/CharacterPickerDialog;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/text/Editable;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroid/text/method/CharacterPickerDialog;->show()V

    :cond_1
    move v0, v6

    .line 533
    goto :goto_0
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "src"

    .prologue
    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getInputType()I
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Landroid/text/method/QwertyKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    iget-boolean v1, p0, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    invoke-static {v0, v1}, Landroid/text/method/QwertyKeyListener;->makeTextContentType(Landroid/text/method/TextKeyListener$Capitalize;Z)I

    move-result v0

    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 46
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 68
    const/16 v35, 0x0

    .line 70
    .local v35, pref:I
    if-eqz p1, :cond_0

    .line 71
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/method/TextKeyListener;->getPrefs(Landroid/content/Context;)I

    move-result v35

    .line 75
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v17

    .line 76
    .local v17, a:I
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v21

    .line 78
    .local v21, b:I
    move/from16 v0, v17

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v40

    .line 79
    .local v40, selStart:I
    move/from16 v0, v17

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v39

    .line 81
    .local v39, selEnd:I
    if-ltz v40, :cond_1

    if-gez v39, :cond_2

    .line 82
    :cond_1
    const/16 v39, 0x0

    move/from16 v40, v39

    .line 83
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move v1, v5

    move v2, v6

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 87
    :cond_2
    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v20

    .line 88
    .local v20, activeStart:I
    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v19

    .line 92
    .local v19, activeEnd:I
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;)I

    move-result v5

    move-object/from16 v0, p4

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v30

    .line 94
    .local v30, i:I
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v10

    .line 95
    .local v10, count:I
    if-lez v10, :cond_4

    move/from16 v0, v40

    move/from16 v1, v39

    if-ne v0, v1, :cond_4

    if-lez v40, :cond_4

    .line 96
    const/4 v5, 0x1

    sub-int v5, v40, v5

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    .line 98
    .local v8, c:C
    move v0, v8

    move/from16 v1, v30

    if-eq v0, v1, :cond_3

    invoke-static/range {v30 .. v30}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v5

    if-ne v8, v5, :cond_4

    if-eqz p1, :cond_4

    .line 99
    :cond_3
    const/4 v9, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-direct/range {v5 .. v10}, Landroid/text/method/QwertyKeyListener;->showCharacterPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 100
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    .line 101
    const/4 v5, 0x1

    .line 382
    .end local v8           #c:C
    :goto_0
    return v5

    .line 106
    :cond_4
    const v5, 0xef01

    move/from16 v0, v30

    move v1, v5

    if-ne v0, v1, :cond_6

    .line 107
    if-eqz p1, :cond_5

    .line 108
    const v14, 0xef01

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-direct/range {v11 .. v16}, Landroid/text/method/QwertyKeyListener;->showCharacterPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z

    .line 111
    :cond_5
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    .line 112
    const/4 v5, 0x1

    goto :goto_0

    .line 115
    :cond_6
    const v5, 0xef00

    move/from16 v0, v30

    move v1, v5

    if-ne v0, v1, :cond_9

    .line 118
    move/from16 v0, v40

    move/from16 v1, v39

    if-ne v0, v1, :cond_7

    .line 119
    move/from16 v42, v39

    .line 122
    .local v42, start:I
    :goto_1
    if-lez v42, :cond_8

    sub-int v5, v39, v42

    const/4 v6, 0x4

    if-ge v5, v6, :cond_8

    const/4 v5, 0x1

    sub-int v5, v42, v5

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    if-ltz v5, :cond_8

    .line 123
    add-int/lit8 v42, v42, -0x1

    goto :goto_1

    .line 126
    .end local v42           #start:I
    :cond_7
    move/from16 v42, v40

    .line 129
    .restart local v42       #start:I
    :cond_8
    const/16 v22, -0x1

    .line 131
    .local v22, ch:I
    :try_start_0
    move-object/from16 v0, p2

    move/from16 v1, v42

    move/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v29

    .line 132
    .local v29, hex:Ljava/lang/String;
    const/16 v5, 0x10

    move-object/from16 v0, v29

    move v1, v5

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v22

    .line 135
    .end local v29           #hex:Ljava/lang/String;
    :goto_2
    if-ltz v22, :cond_b

    .line 136
    move/from16 v40, v42

    .line 137
    move-object/from16 v0, p2

    move/from16 v1, v40

    move/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 138
    move/from16 v30, v22

    .line 145
    .end local v22           #ch:I
    .end local v42           #start:I
    :cond_9
    :goto_3
    const-string v5, "GT-I9100"

    const-string v6, "SGH-I927"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 147
    if-nez v30, :cond_d

    const/16 v5, 0x73

    move/from16 v0, p3

    move v1, v5

    if-ne v0, v1, :cond_d

    .line 148
    move/from16 v0, v40

    move/from16 v1, v39

    if-eq v0, v1, :cond_a

    .line 149
    move-object/from16 v0, p2

    move/from16 v1, v39

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 152
    :cond_a
    const/4 v5, 0x2

    move-object/from16 v0, p2

    move v1, v5

    invoke-static {v0, v1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v5

    if-lez v5, :cond_c

    .line 153
    const-string/jumbo v5, "www."

    move-object/from16 v0, p2

    move/from16 v1, v40

    move/from16 v2, v39

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 158
    :goto_4
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 159
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 140
    .restart local v22       #ch:I
    .restart local v42       #start:I
    :cond_b
    const/16 v30, 0x0

    goto :goto_3

    .line 155
    .end local v22           #ch:I
    .end local v42           #start:I
    :cond_c
    const-string v5, ".com"

    move-object/from16 v0, p2

    move/from16 v1, v40

    move/from16 v2, v39

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_4

    .line 163
    :cond_d
    if-nez v30, :cond_f

    const/16 v5, 0x74

    move/from16 v0, p3

    move v1, v5

    if-ne v0, v1, :cond_f

    .line 164
    new-instance v43, Landroid/content/Intent;

    const-string v5, "android.speech.action.WEB_SEARCH"

    move-object/from16 v0, v43

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    .local v43, voiceSearchIntent:Landroid/content/Intent;
    const-string v5, "android.speech.extra.LANGUAGE_MODEL"

    const-string/jumbo v6, "web_search"

    move-object/from16 v0, v43

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    if-eqz p1, :cond_e

    .line 169
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 175
    :cond_e
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 171
    :catch_0
    move-exception v5

    move-object/from16 v27, v5

    .line 172
    .local v27, ex:Ljava/lang/Exception;
    const-string v5, "QwertyKeyListener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Exception ex= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 179
    .end local v27           #ex:Ljava/lang/Exception;
    .end local v43           #voiceSearchIntent:Landroid/content/Intent;
    :cond_f
    const/16 v5, 0x76

    move/from16 v0, p3

    move v1, v5

    if-ne v0, v1, :cond_11

    .line 180
    const/4 v5, 0x2

    move-object/from16 v0, p2

    move v1, v5

    invoke-static {v0, v1}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v5

    if-lez v5, :cond_10

    .line 182
    if-eqz p1, :cond_10

    .line 183
    new-instance v5, Landroid/text/method/SmileyPickerDialog;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x1

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/method/SmileyPickerDialog;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/text/Editable;Z)V

    invoke-virtual {v5}, Landroid/text/method/SmileyPickerDialog;->show()V

    .line 186
    :cond_10
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    .line 187
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 193
    :cond_11
    if-eqz v30, :cond_23

    .line 194
    const/16 v25, 0x0

    .line 196
    .local v25, dead:Z
    const/high16 v5, -0x8000

    and-int v5, v5, v30

    if-eqz v5, :cond_12

    .line 197
    const/16 v25, 0x1

    .line 198
    const v5, 0x7fffffff

    and-int v30, v30, v5

    .line 201
    :cond_12
    move/from16 v0, v20

    move/from16 v1, v40

    if-ne v0, v1, :cond_14

    move/from16 v0, v19

    move/from16 v1, v39

    if-ne v0, v1, :cond_14

    .line 202
    const/16 v38, 0x0

    .line 204
    .local v38, replace:Z
    sub-int v5, v39, v40

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-nez v5, :cond_13

    .line 205
    move-object/from16 v0, p2

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v18

    .line 206
    .local v18, accent:C
    move/from16 v0, v18

    move/from16 v1, v30

    invoke-static {v0, v1}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v23

    .line 208
    .local v23, composed:I
    if-eqz v23, :cond_13

    .line 209
    move/from16 v30, v23

    .line 210
    const/16 v38, 0x1

    .line 214
    .end local v18           #accent:C
    .end local v23           #composed:I
    :cond_13
    if-nez v38, :cond_14

    .line 215
    move-object/from16 v0, p2

    move/from16 v1, v39

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 216
    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 217
    move/from16 v40, v39

    .line 221
    .end local v38           #replace:Z
    :cond_14
    and-int/lit8 v5, v35, 0x1

    if-eqz v5, :cond_15

    invoke-static/range {v30 .. v30}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v5

    if-eqz v5, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/method/QwertyKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p2

    move/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/text/method/TextKeyListener;->shouldCap(Landroid/text/method/TextKeyListener$Capitalize;Ljava/lang/CharSequence;I)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 224
    sget-object v5, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v44

    .line 225
    .local v44, where:I
    sget-object v5, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v28

    .line 227
    .local v28, flags:I
    move/from16 v0, v44

    move/from16 v1, v40

    if-ne v0, v1, :cond_1a

    shr-int/lit8 v5, v28, 0x10

    const v6, 0xffff

    and-int/2addr v5, v6

    move v0, v5

    move/from16 v1, v30

    if-ne v0, v1, :cond_1a

    .line 228
    sget-object v5, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 244
    .end local v28           #flags:I
    .end local v44           #where:I
    :cond_15
    :goto_5
    move/from16 v0, v40

    move/from16 v1, v39

    if-eq v0, v1, :cond_16

    .line 245
    move-object/from16 v0, p2

    move/from16 v1, v39

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 247
    :cond_16
    sget-object v5, Landroid/text/method/QwertyKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    const/16 v6, 0x11

    move-object/from16 v0, p2

    move-object v1, v5

    move/from16 v2, v40

    move/from16 v3, v40

    move v4, v6

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 250
    move/from16 v0, v30

    int-to-char v0, v0

    move v5, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move/from16 v1, v40

    move/from16 v2, v39

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 252
    sget-object v5, Landroid/text/method/QwertyKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v33

    .line 253
    .local v33, oldStart:I
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v39

    .line 255
    move/from16 v0, v33

    move/from16 v1, v39

    if-ge v0, v1, :cond_17

    .line 256
    sget-object v5, Landroid/text/method/TextKeyListener;->LAST_TYPED:Ljava/lang/Object;

    const/16 v6, 0x21

    move-object/from16 v0, p2

    move-object v1, v5

    move/from16 v2, v33

    move/from16 v3, v39

    move v4, v6

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 260
    if-eqz v25, :cond_17

    .line 261
    move-object/from16 v0, p2

    move/from16 v1, v33

    move/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 262
    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    const/16 v6, 0x21

    move-object/from16 v0, p2

    move-object v1, v5

    move/from16 v2, v33

    move/from16 v3, v39

    move v4, v6

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 267
    :cond_17
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 272
    and-int/lit8 v5, v35, 0x2

    if-eqz v5, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    move v5, v0

    if-eqz v5, :cond_1e

    const/16 v5, 0x20

    move/from16 v0, v30

    move v1, v5

    if-eq v0, v1, :cond_18

    const/16 v5, 0x9

    move/from16 v0, v30

    move v1, v5

    if-eq v0, v1, :cond_18

    const/16 v5, 0xa

    move/from16 v0, v30

    move v1, v5

    if-eq v0, v1, :cond_18

    const/16 v5, 0x2c

    move/from16 v0, v30

    move v1, v5

    if-eq v0, v1, :cond_18

    const/16 v5, 0x2e

    move/from16 v0, v30

    move v1, v5

    if-eq v0, v1, :cond_18

    const/16 v5, 0x21

    move/from16 v0, v30

    move v1, v5

    if-eq v0, v1, :cond_18

    const/16 v5, 0x3f

    move/from16 v0, v30

    move v1, v5

    if-eq v0, v1, :cond_18

    const/16 v5, 0x22

    move/from16 v0, v30

    move v1, v5

    if-eq v0, v1, :cond_18

    invoke-static/range {v30 .. v30}, Ljava/lang/Character;->getType(I)I

    move-result v5

    const/16 v6, 0x16

    if-ne v5, v6, :cond_1e

    :cond_18
    sget-object v5, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    move v0, v5

    move/from16 v1, v33

    if-eq v0, v1, :cond_1e

    .line 280
    move/from16 v45, v33

    .local v45, x:I
    :goto_6
    if-lez v45, :cond_19

    .line 281
    const/4 v5, 0x1

    sub-int v5, v45, v5

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    .line 282
    .restart local v8       #c:C
    const/16 v5, 0x27

    if-eq v8, v5, :cond_1c

    invoke-static {v8}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_1c

    .line 287
    .end local v8           #c:C
    :cond_19
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v45

    move/from16 v3, v33

    move-object/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/method/QwertyKeyListener;->getReplacement(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    move-result-object v36

    .line 289
    .local v36, rep:Ljava/lang/String;
    if-eqz v36, :cond_1e

    .line 290
    const/4 v5, 0x0

    invoke-interface/range {p2 .. p2}, Landroid/text/Editable;->length()I

    move-result v6

    const-class v7, Landroid/text/method/QwertyKeyListener$Replaced;

    move-object/from16 v0, p2

    move v1, v5

    move v2, v6

    move-object v3, v7

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v37

    check-cast v37, [Landroid/text/method/QwertyKeyListener$Replaced;

    .line 292
    .local v37, repl:[Landroid/text/method/QwertyKeyListener$Replaced;
    const/16 v17, 0x0

    :goto_7
    move-object/from16 v0, v37

    array-length v0, v0

    move v5, v0

    move/from16 v0, v17

    move v1, v5

    if-ge v0, v1, :cond_1d

    .line 293
    aget-object v5, v37, v17

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 292
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    .line 230
    .end local v33           #oldStart:I
    .end local v36           #rep:Ljava/lang/String;
    .end local v37           #repl:[Landroid/text/method/QwertyKeyListener$Replaced;
    .end local v45           #x:I
    .restart local v28       #flags:I
    .restart local v44       #where:I
    :cond_1a
    shl-int/lit8 v28, v30, 0x10

    .line 231
    invoke-static/range {v30 .. v30}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v30

    .line 233
    if-nez v40, :cond_1b

    .line 234
    sget-object v5, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    or-int/lit8 v8, v28, 0x11

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_5

    .line 237
    :cond_1b
    sget-object v5, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    const/4 v6, 0x1

    sub-int v6, v40, v6

    or-int/lit8 v7, v28, 0x21

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    move/from16 v3, v40

    move v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_5

    .line 280
    .end local v28           #flags:I
    .end local v44           #where:I
    .restart local v8       #c:C
    .restart local v33       #oldStart:I
    .restart local v45       #x:I
    :cond_1c
    add-int/lit8 v45, v45, -0x1

    goto :goto_6

    .line 295
    .end local v8           #c:C
    .restart local v36       #rep:Ljava/lang/String;
    .restart local v37       #repl:[Landroid/text/method/QwertyKeyListener$Replaced;
    :cond_1d
    sub-int v5, v33, v45

    move v0, v5

    new-array v0, v0, [C

    move-object/from16 v34, v0

    .line 296
    .local v34, orig:[C
    const/4 v5, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v45

    move/from16 v2, v33

    move-object/from16 v3, v34

    move v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 298
    new-instance v5, Landroid/text/method/QwertyKeyListener$Replaced;

    move-object v0, v5

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Landroid/text/method/QwertyKeyListener$Replaced;-><init>([C)V

    const/16 v6, 0x21

    move-object/from16 v0, p2

    move-object v1, v5

    move/from16 v2, v45

    move/from16 v3, v33

    move v4, v6

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 300
    move-object/from16 v0, p2

    move/from16 v1, v45

    move/from16 v2, v33

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 306
    .end local v34           #orig:[C
    .end local v36           #rep:Ljava/lang/String;
    .end local v37           #repl:[Landroid/text/method/QwertyKeyListener$Replaced;
    .end local v45           #x:I
    :cond_1e
    and-int/lit8 v5, v35, 0x4

    if-eqz v5, :cond_22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    move v5, v0

    if-eqz v5, :cond_22

    .line 307
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v39

    .line 308
    const/4 v5, 0x3

    sub-int v5, v39, v5

    if-ltz v5, :cond_22

    .line 309
    const/4 v5, 0x1

    sub-int v5, v39, v5

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_22

    const/4 v5, 0x2

    sub-int v5, v39, v5

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_22

    .line 311
    const/4 v5, 0x3

    sub-int v5, v39, v5

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    .line 313
    .restart local v8       #c:C
    const/4 v5, 0x3

    sub-int v31, v39, v5

    .local v31, j:I
    :goto_8
    if-lez v31, :cond_20

    .line 314
    const/16 v5, 0x22

    if-eq v8, v5, :cond_1f

    invoke-static {v8}, Ljava/lang/Character;->getType(C)I

    move-result v5

    const/16 v6, 0x16

    if-ne v5, v6, :cond_20

    .line 316
    :cond_1f
    const/4 v5, 0x1

    sub-int v5, v31, v5

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    .line 313
    add-int/lit8 v31, v31, -0x1

    goto :goto_8

    .line 322
    :cond_20
    invoke-static {v8}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_21

    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 323
    :cond_21
    const/4 v5, 0x2

    sub-int v5, v39, v5

    const/4 v6, 0x1

    sub-int v6, v39, v6

    const-string v7, "."

    move-object/from16 v0, p2

    move v1, v5

    move v2, v6

    move-object v3, v7

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 329
    .end local v8           #c:C
    .end local v31           #j:I
    :cond_22
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 330
    .end local v25           #dead:Z
    .end local v33           #oldStart:I
    :cond_23
    const/16 v5, 0x43

    move/from16 v0, p3

    move v1, v5

    if-ne v0, v1, :cond_27

    move/from16 v0, v40

    move/from16 v1, v39

    if-ne v0, v1, :cond_27

    .line 333
    const/16 v24, 0x1

    .line 340
    .local v24, consider:I
    sget-object v5, Landroid/text/method/TextKeyListener;->LAST_TYPED:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    move v0, v5

    move/from16 v1, v40

    if-ne v0, v1, :cond_24

    .line 341
    const/4 v5, 0x1

    sub-int v5, v40, v5

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_24

    .line 342
    const/16 v24, 0x2

    .line 345
    :cond_24
    sub-int v5, v40, v24

    const-class v6, Landroid/text/method/QwertyKeyListener$Replaced;

    move-object/from16 v0, p2

    move v1, v5

    move/from16 v2, v40

    move-object v3, v6

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v37

    check-cast v37, [Landroid/text/method/QwertyKeyListener$Replaced;

    .line 348
    .restart local v37       #repl:[Landroid/text/method/QwertyKeyListener$Replaced;
    move-object/from16 v0, v37

    array-length v0, v0

    move v5, v0

    if-lez v5, :cond_27

    .line 349
    const/4 v5, 0x0

    aget-object v5, v37, v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v41

    .line 350
    .local v41, st:I
    const/4 v5, 0x0

    aget-object v5, v37, v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v26

    .line 351
    .local v26, en:I
    new-instance v32, Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v5, v37, v5

    #getter for: Landroid/text/method/QwertyKeyListener$Replaced;->mText:[C
    invoke-static {v5}, Landroid/text/method/QwertyKeyListener$Replaced;->access$000(Landroid/text/method/QwertyKeyListener$Replaced;)[C

    move-result-object v5

    move-object/from16 v0, v32

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 353
    .local v32, old:Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v37, v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 359
    move/from16 v0, v40

    move/from16 v1, v26

    if-lt v0, v1, :cond_26

    .line 360
    sget-object v5, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    const/16 v6, 0x22

    move-object/from16 v0, p2

    move-object v1, v5

    move/from16 v2, v26

    move/from16 v3, v26

    move v4, v6

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 362
    move-object/from16 v0, p2

    move/from16 v1, v41

    move/from16 v2, v26

    move-object/from16 v3, v32

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 364
    sget-object v5, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v26

    .line 365
    const/4 v5, 0x1

    sub-int v5, v26, v5

    if-ltz v5, :cond_25

    .line 366
    sget-object v5, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    const/4 v6, 0x1

    sub-int v6, v26, v6

    const/16 v7, 0x21

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    move/from16 v3, v26

    move v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 372
    :goto_9
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 378
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 370
    :cond_25
    sget-object v5, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_9

    .line 374
    :cond_26
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 375
    invoke-super/range {p0 .. p4}, Landroid/text/method/BaseKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_0

    .line 382
    .end local v24           #consider:I
    .end local v26           #en:I
    .end local v32           #old:Ljava/lang/String;
    .end local v37           #repl:[Landroid/text/method/QwertyKeyListener$Replaced;
    .end local v41           #st:I
    :cond_27
    invoke-super/range {p0 .. p4}, Landroid/text/method/BaseKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_0

    .line 133
    .restart local v22       #ch:I
    .restart local v42       #start:I
    :catch_1
    move-exception v5

    goto/16 :goto_2
.end method
