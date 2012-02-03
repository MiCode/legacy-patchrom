.class public Landroid/view/KeyCharacterMap;
.super Ljava/lang/Object;
.source "KeyCharacterMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/KeyCharacterMap$KeyData;
    }
.end annotation


# static fields
.field private static final ACUTE:I = 0xb40000

.field public static final ALPHA:I = 0x3

.field public static final BUILT_IN_KEYBOARD:I = 0x0

.field private static final CIRCUMFLEX:I = 0x5e0000

.field private static COMBINING:Landroid/util/SparseIntArray; = null

.field public static final COMBINING_ACCENT:I = -0x80000000

.field public static final COMBINING_ACCENT_MASK:I = 0x7fffffff

.field private static DEAD:Landroid/util/SparseIntArray; = null

.field private static final GRAVE:I = 0x600000

.field public static final HEX_INPUT:C = '\uef00'

.field public static final NUMERIC:I = 0x1

.field public static final PICKER_DIALOG_INPUT:C = '\uef01'

.field public static final PREDICTIVE:I = 0x2

.field private static final TILDE:I = 0x7e0000

.field private static final UMLAUT:I = 0xa80000

.field private static sInstances:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/KeyCharacterMap;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sLock:Ljava/lang/Object;


# instance fields
.field private mKeyboardDevice:I

.field private mPointer:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/KeyCharacterMap;->sLock:Ljava/lang/Object;

    .line 62
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/view/KeyCharacterMap;->sInstances:Landroid/util/SparseArray;

    .line 405
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/view/KeyCharacterMap;->COMBINING:Landroid/util/SparseIntArray;

    .line 411
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    .line 435
    sget-object v0, Landroid/view/KeyCharacterMap;->COMBINING:Landroid/util/SparseIntArray;

    const/16 v1, 0x300

    const v2, -0x7fffffa0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 436
    sget-object v0, Landroid/view/KeyCharacterMap;->COMBINING:Landroid/util/SparseIntArray;

    const/16 v1, 0x301

    const v2, -0x7fffff4c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 437
    sget-object v0, Landroid/view/KeyCharacterMap;->COMBINING:Landroid/util/SparseIntArray;

    const/16 v1, 0x302

    const v2, -0x7fffffa2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 438
    sget-object v0, Landroid/view/KeyCharacterMap;->COMBINING:Landroid/util/SparseIntArray;

    const/16 v1, 0x303

    const v2, -0x7fffff82

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 439
    sget-object v0, Landroid/view/KeyCharacterMap;->COMBINING:Landroid/util/SparseIntArray;

    const/16 v1, 0x308

    const v2, -0x7fffff58

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 441
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40041

    const/16 v2, 0xc1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 442
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40043

    const/16 v2, 0x106

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 443
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40045

    const/16 v2, 0xc9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 444
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40047

    const/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 445
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40049

    const/16 v2, 0xcd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 446
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb4004b

    const/16 v2, 0x1e30

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 447
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb4004c

    const/16 v2, 0x139

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 448
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb4004d

    const/16 v2, 0x1e3e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 449
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb4004e

    const/16 v2, 0x143

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 450
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb4004f

    const/16 v2, 0xd3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 451
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40050

    const/16 v2, 0x1e54

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 452
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40052

    const/16 v2, 0x154

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 453
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40053

    const/16 v2, 0x15a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 454
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40055

    const/16 v2, 0xda

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 455
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40057

    const/16 v2, 0x1e82

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 456
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40059

    const/16 v2, 0xdd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 457
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb4005a

    const/16 v2, 0x179

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 458
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40061

    const/16 v2, 0xe1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 459
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40063

    const/16 v2, 0x107

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 460
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40065

    const/16 v2, 0xe9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 461
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40067

    const/16 v2, 0x1f5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 462
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40069

    const/16 v2, 0xed

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 463
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb4006b

    const/16 v2, 0x1e31

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 464
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb4006c

    const/16 v2, 0x13a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 465
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb4006d

    const/16 v2, 0x1e3f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 466
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb4006e

    const/16 v2, 0x144

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 467
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb4006f

    const/16 v2, 0xf3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 468
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40070

    const/16 v2, 0x1e55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 469
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40072

    const/16 v2, 0x155

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 470
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40073

    const/16 v2, 0x15b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 471
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40075

    const/16 v2, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 472
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40077

    const/16 v2, 0x1e83

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 473
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb40079

    const/16 v2, 0xfd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 474
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xb4007a

    const/16 v2, 0x17a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 475
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0041

    const/16 v2, 0xc2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 476
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0043

    const/16 v2, 0x108

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 477
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0045

    const/16 v2, 0xca

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 478
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0047

    const/16 v2, 0x11c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 479
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0048

    const/16 v2, 0x124

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 480
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0049

    const/16 v2, 0xce

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 481
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e004a

    const/16 v2, 0x134

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 482
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e004f

    const/16 v2, 0xd4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 483
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0053

    const/16 v2, 0x15c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 484
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0055

    const/16 v2, 0xdb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 485
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0057

    const/16 v2, 0x174

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 486
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0059

    const/16 v2, 0x176

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 487
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e005a

    const/16 v2, 0x1e90

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 488
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0061

    const/16 v2, 0xe2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 489
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0063

    const/16 v2, 0x109

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 490
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0065

    const/16 v2, 0xea

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 491
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0067

    const/16 v2, 0x11d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 492
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0068

    const/16 v2, 0x125

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 493
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0069

    const/16 v2, 0xee

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 494
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e006a

    const/16 v2, 0x135

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 495
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e006f

    const/16 v2, 0xf4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 496
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0073

    const/16 v2, 0x15d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 497
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0075

    const/16 v2, 0xfb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 498
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0077

    const/16 v2, 0x175

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 499
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e0079

    const/16 v2, 0x177

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 500
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x5e007a

    const/16 v2, 0x1e91

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 501
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x600041

    const/16 v2, 0xc0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 502
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x600045

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 503
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x600049

    const/16 v2, 0xcc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 504
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x60004e

    const/16 v2, 0x1f8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 505
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x60004f

    const/16 v2, 0xd2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 506
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x600055

    const/16 v2, 0xd9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 507
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x600057

    const/16 v2, 0x1e80

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 508
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x600059

    const/16 v2, 0x1ef2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 509
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x600061

    const/16 v2, 0xe0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 510
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x600065

    const/16 v2, 0xe8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 511
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x600069

    const/16 v2, 0xec

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 512
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x60006e

    const/16 v2, 0x1f9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 513
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x60006f

    const/16 v2, 0xf2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 514
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x600075

    const/16 v2, 0xf9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 515
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x600077

    const/16 v2, 0x1e81

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 516
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x600079

    const/16 v2, 0x1ef3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 517
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x7e0041

    const/16 v2, 0xc3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 518
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x7e0045

    const/16 v2, 0x1ebc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 519
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x7e0049

    const/16 v2, 0x128

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 520
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x7e004e

    const/16 v2, 0xd1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 521
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x7e004f

    const/16 v2, 0xd5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 522
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x7e0055

    const/16 v2, 0x168

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 523
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x7e0056

    const/16 v2, 0x1e7c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 524
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x7e0059

    const/16 v2, 0x1ef8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 525
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x7e0061

    const/16 v2, 0xe3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 526
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x7e0065

    const/16 v2, 0x1ebd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 527
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x7e0069

    const/16 v2, 0x129

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 528
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x7e006e

    const/16 v2, 0xf1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 529
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x7e006f

    const/16 v2, 0xf5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 530
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x7e0075

    const/16 v2, 0x169

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 531
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x7e0076

    const/16 v2, 0x1e7d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 532
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0x7e0079

    const/16 v2, 0x1ef9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 533
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa80041

    const/16 v2, 0xc4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 534
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa80045

    const/16 v2, 0xcb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 535
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa80048

    const/16 v2, 0x1e26

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 536
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa80049

    const/16 v2, 0xcf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 537
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa8004f

    const/16 v2, 0xd6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 538
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa80055

    const/16 v2, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 539
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa80057

    const/16 v2, 0x1e84

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 540
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa80058

    const/16 v2, 0x1e8c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 541
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa80059

    const/16 v2, 0x178

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 542
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa80061

    const/16 v2, 0xe4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 543
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa80065

    const/16 v2, 0xeb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 544
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa80068

    const/16 v2, 0x1e27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 545
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa80069

    const/16 v2, 0xef

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 546
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa8006f

    const/16 v2, 0xf6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 547
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa80074

    const/16 v2, 0x1e97

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 548
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa80075

    const/16 v2, 0xfc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 549
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa80077

    const/16 v2, 0x1e85

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 550
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa80078

    const/16 v2, 0x1e8d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 551
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    const v1, 0xa80079

    const/16 v2, 0xff

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 552
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .parameter "keyboardDevice"

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput p1, p0, Landroid/view/KeyCharacterMap;->mKeyboardDevice:I

    .line 90
    invoke-static {p1}, Landroid/view/KeyCharacterMap;->ctor_native(I)I

    move-result v0

    iput v0, p0, Landroid/view/KeyCharacterMap;->mPointer:I

    .line 91
    return-void
.end method

.method private static native ctor_native(I)I
.end method

.method public static deviceHasKey(I)Z
    .locals 4
    .parameter "keyCode"

    .prologue
    const/4 v3, 0x0

    .line 368
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 369
    .local v0, codeArray:[I
    aput p0, v0, v3

    .line 370
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->deviceHasKeys([I)[Z

    move-result-object v1

    .line 371
    .local v1, ret:[Z
    aget-boolean v2, v1, v3

    return v2
.end method

.method public static deviceHasKeys([I)[Z
    .locals 3
    .parameter "keyCodes"

    .prologue
    .line 375
    array-length v2, p0

    new-array v0, v2, [Z

    .line 376
    .local v0, ret:[Z
    const-string/jumbo v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 378
    .local v1, wm:Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v1, p0, v0}, Landroid/view/IWindowManager;->hasKeys([I[Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :goto_0
    return-object v0

    .line 379
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static native dtor_native(I)V
.end method

.method public static getDeadChar(II)I
    .locals 2
    .parameter "accent"
    .parameter "c"

    .prologue
    .line 187
    sget-object v0, Landroid/view/KeyCharacterMap;->DEAD:Landroid/util/SparseIntArray;

    shl-int/lit8 v1, p0, 0x10

    or-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method private static native getDisplayLabel_native(II)C
.end method

.method private static native getEvents_native(I[C)[J
.end method

.method private static native getKeyData_native(IILandroid/view/KeyCharacterMap$KeyData;)Z
.end method

.method private static native getKeyboardType_native(I)I
.end method

.method private static native getMatch_native(II[CI)C
.end method

.method private static native getNumber_native(II)C
.end method

.method private static native get_native(III)C
.end method

.method public static load(I)Landroid/view/KeyCharacterMap;
    .locals 6
    .parameter "keyboard"

    .prologue
    .line 72
    sget-object v3, Landroid/view/KeyCharacterMap;->sLock:Ljava/lang/Object;

    monitor-enter v3

    .line 74
    :try_start_0
    sget-object v4, Landroid/view/KeyCharacterMap;->sInstances:Landroid/util/SparseArray;

    invoke-virtual {v4, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 75
    .local v0, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/view/KeyCharacterMap;>;"
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/KeyCharacterMap;

    .line 77
    .local v1, result:Landroid/view/KeyCharacterMap;
    if-eqz v1, :cond_0

    .line 78
    monitor-exit v3

    move-object v2, v1

    .line 83
    .end local v1           #result:Landroid/view/KeyCharacterMap;
    .local v2, result:Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 81
    .end local v2           #result:Ljava/lang/Object;
    :cond_0
    new-instance v1, Landroid/view/KeyCharacterMap;

    invoke-direct {v1, p0}, Landroid/view/KeyCharacterMap;-><init>(I)V

    .line 82
    .restart local v1       #result:Landroid/view/KeyCharacterMap;
    sget-object v4, Landroid/view/KeyCharacterMap;->sInstances:Landroid/util/SparseArray;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, p0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 83
    monitor-exit v3

    move-object v2, v1

    .restart local v2       #result:Ljava/lang/Object;
    goto :goto_0

    .line 84
    .end local v0           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/view/KeyCharacterMap;>;"
    .end local v1           #result:Landroid/view/KeyCharacterMap;
    .end local v2           #result:Ljava/lang/Object;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 352
    iget v0, p0, Landroid/view/KeyCharacterMap;->mPointer:I

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->dtor_native(I)V

    .line 353
    return-void
.end method

.method public get(II)I
    .locals 5
    .parameter "keyCode"
    .parameter "meta"

    .prologue
    .line 110
    and-int/lit16 v2, p2, 0x100

    if-eqz v2, :cond_0

    .line 111
    or-int/lit8 p2, p2, 0x1

    .line 113
    :cond_0
    and-int/lit16 v2, p2, 0x200

    if-eqz v2, :cond_1

    .line 114
    or-int/lit8 p2, p2, 0x2

    .line 118
    :cond_1
    and-int/lit16 v2, p2, 0x100

    if-eqz v2, :cond_2

    .line 119
    iget v2, p0, Landroid/view/KeyCharacterMap;->mPointer:I

    const/4 v3, 0x1

    invoke-static {v2, p1, v3}, Landroid/view/KeyCharacterMap;->get_native(III)C

    move-result v2

    iget v3, p0, Landroid/view/KeyCharacterMap;->mPointer:I

    const/4 v4, 0x2

    invoke-static {v3, p1, v4}, Landroid/view/KeyCharacterMap;->get_native(III)C

    move-result v3

    if-ne v2, v3, :cond_2

    .line 121
    and-int/lit8 p2, p2, -0x2

    .line 125
    :cond_2
    iget v2, p0, Landroid/view/KeyCharacterMap;->mPointer:I

    invoke-static {v2, p1, p2}, Landroid/view/KeyCharacterMap;->get_native(III)C

    move-result v1

    .line 126
    .local v1, ret:I
    sget-object v2, Landroid/view/KeyCharacterMap;->COMBINING:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 128
    .local v0, map:I
    if-eqz v0, :cond_3

    move v2, v0

    .line 131
    :goto_0
    return v2

    :cond_3
    move v2, v1

    goto :goto_0
.end method

.method public getDisplayLabel(I)C
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 177
    iget v0, p0, Landroid/view/KeyCharacterMap;->mPointer:I

    invoke-static {v0, p1}, Landroid/view/KeyCharacterMap;->getDisplayLabel_native(II)C

    move-result v0

    return v0
.end method

.method public getEvents([C)[Landroid/view/KeyEvent;
    .locals 30
    .parameter "chars"

    .prologue
    .line 246
    if-nez p1, :cond_0

    .line 247
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 250
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/KeyCharacterMap;->mPointer:I

    move v2, v0

    move v0, v2

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/view/KeyCharacterMap;->getEvents_native(I[C)[J

    move-result-object v26

    .line 251
    .local v26, keys:[J
    if-nez v26, :cond_1

    .line 252
    const/4 v2, 0x0

    .line 327
    :goto_0
    return-object v2

    .line 256
    :cond_1
    move-object/from16 v0, v26

    array-length v0, v0

    move v2, v0

    mul-int/lit8 v27, v2, 0x2

    .line 257
    .local v27, len:I
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v23, v0

    .line 258
    .local v23, N:I
    const/16 v24, 0x0

    .local v24, i:I
    :goto_1
    move/from16 v0, v24

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    .line 259
    aget-wide v5, v26, v24

    const/16 v2, 0x20

    shr-long/2addr v5, v2

    move-wide v0, v5

    long-to-int v0, v0

    move/from16 v28, v0

    .line 260
    .local v28, mods:I
    and-int/lit8 v2, v28, 0x2

    if-eqz v2, :cond_2

    .line 261
    add-int/lit8 v27, v27, 0x2

    .line 263
    :cond_2
    and-int/lit8 v2, v28, 0x1

    if-eqz v2, :cond_3

    .line 264
    add-int/lit8 v27, v27, 0x2

    .line 266
    :cond_3
    and-int/lit8 v2, v28, 0x4

    if-eqz v2, :cond_4

    .line 267
    add-int/lit8 v27, v27, 0x2

    .line 258
    :cond_4
    add-int/lit8 v24, v24, 0x1

    goto :goto_1

    .line 272
    .end local v28           #mods:I
    :cond_5
    move/from16 v0, v27

    new-array v0, v0, [Landroid/view/KeyEvent;

    move-object/from16 v29, v0

    .line 273
    .local v29, rv:[Landroid/view/KeyEvent;
    const/16 v25, 0x0

    .line 274
    .local v25, index:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 275
    .local v3, now:J
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/KeyCharacterMap;->mKeyboardDevice:I

    move v11, v0

    .line 276
    .local v11, device:I
    const/16 v24, 0x0

    :goto_2
    move/from16 v0, v24

    move/from16 v1, v23

    if-ge v0, v1, :cond_c

    .line 277
    aget-wide v5, v26, v24

    const/16 v2, 0x20

    shr-long/2addr v5, v2

    move-wide v0, v5

    long-to-int v0, v0

    move/from16 v28, v0

    .line 278
    .restart local v28       #mods:I
    const/4 v10, 0x0

    .line 280
    .local v10, meta:I
    and-int/lit8 v2, v28, 0x2

    if-eqz v2, :cond_6

    .line 281
    or-int/lit8 v10, v10, 0x2

    .line 282
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    const/16 v8, 0x39

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-wide v5, v3

    invoke-direct/range {v2 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIII)V

    aput-object v2, v29, v25

    .line 284
    add-int/lit8 v25, v25, 0x1

    .line 286
    :cond_6
    and-int/lit8 v2, v28, 0x1

    if-eqz v2, :cond_7

    .line 287
    or-int/lit8 v10, v10, 0x1

    .line 288
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    const/16 v8, 0x3b

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-wide v5, v3

    invoke-direct/range {v2 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIII)V

    aput-object v2, v29, v25

    .line 290
    add-int/lit8 v25, v25, 0x1

    .line 292
    :cond_7
    and-int/lit8 v2, v28, 0x4

    if-eqz v2, :cond_8

    .line 293
    or-int/lit8 v10, v10, 0x4

    .line 294
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    const/16 v8, 0x3f

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-wide v5, v3

    invoke-direct/range {v2 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIII)V

    aput-object v2, v29, v25

    .line 296
    add-int/lit8 v25, v25, 0x1

    .line 299
    :cond_8
    aget-wide v5, v26, v24

    long-to-int v8, v5

    .line 300
    .local v8, key:I
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-wide v5, v3

    invoke-direct/range {v2 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIII)V

    aput-object v2, v29, v25

    .line 302
    add-int/lit8 v25, v25, 0x1

    .line 303
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-wide v5, v3

    invoke-direct/range {v2 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIII)V

    aput-object v2, v29, v25

    .line 305
    add-int/lit8 v25, v25, 0x1

    .line 307
    and-int/lit8 v2, v28, 0x2

    if-eqz v2, :cond_9

    .line 308
    and-int/lit8 v10, v10, -0x3

    .line 309
    new-instance v12, Landroid/view/KeyEvent;

    const/16 v17, 0x1

    const/16 v18, 0x39

    const/16 v19, 0x0

    const/16 v22, 0x0

    move-wide v13, v3

    move-wide v15, v3

    move/from16 v20, v10

    move/from16 v21, v11

    invoke-direct/range {v12 .. v22}, Landroid/view/KeyEvent;-><init>(JJIIIIII)V

    aput-object v12, v29, v25

    .line 311
    add-int/lit8 v25, v25, 0x1

    .line 313
    :cond_9
    and-int/lit8 v2, v28, 0x1

    if-eqz v2, :cond_a

    .line 314
    and-int/lit8 v10, v10, -0x2

    .line 315
    new-instance v12, Landroid/view/KeyEvent;

    const/16 v17, 0x1

    const/16 v18, 0x3b

    const/16 v19, 0x0

    const/16 v22, 0x0

    move-wide v13, v3

    move-wide v15, v3

    move/from16 v20, v10

    move/from16 v21, v11

    invoke-direct/range {v12 .. v22}, Landroid/view/KeyEvent;-><init>(JJIIIIII)V

    aput-object v12, v29, v25

    .line 317
    add-int/lit8 v25, v25, 0x1

    .line 319
    :cond_a
    and-int/lit8 v2, v28, 0x4

    if-eqz v2, :cond_b

    .line 320
    and-int/lit8 v10, v10, -0x5

    .line 321
    new-instance v12, Landroid/view/KeyEvent;

    const/16 v17, 0x1

    const/16 v18, 0x3f

    const/16 v19, 0x0

    const/16 v22, 0x0

    move-wide v13, v3

    move-wide v15, v3

    move/from16 v20, v10

    move/from16 v21, v11

    invoke-direct/range {v12 .. v22}, Landroid/view/KeyEvent;-><init>(JJIIIIII)V

    aput-object v12, v29, v25

    .line 323
    add-int/lit8 v25, v25, 0x1

    .line 276
    :cond_b
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_2

    .end local v8           #key:I
    .end local v10           #meta:I
    .end local v28           #mods:I
    :cond_c
    move-object/from16 v2, v29

    .line 327
    goto/16 :goto_0
.end method

.method public getKeyData(ILandroid/view/KeyCharacterMap$KeyData;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "results"

    .prologue
    .line 227
    iget-object v0, p2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    array-length v0, v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 228
    iget v0, p0, Landroid/view/KeyCharacterMap;->mPointer:I

    invoke-static {v0, p1, p2}, Landroid/view/KeyCharacterMap;->getKeyData_native(IILandroid/view/KeyCharacterMap$KeyData;)Z

    move-result v0

    return v0

    .line 230
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "results.meta.length must be >= 4"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getKeyboardType()I
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Landroid/view/KeyCharacterMap;->mPointer:I

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->getKeyboardType_native(I)I

    move-result v0

    return v0
.end method

.method public getMatch(I[C)C
    .locals 1
    .parameter "keyCode"
    .parameter "chars"

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/KeyCharacterMap;->getMatch(I[CI)C

    move-result v0

    return v0
.end method

.method public getMatch(I[CI)C
    .locals 1
    .parameter "keyCode"
    .parameter "chars"
    .parameter "modifiers"

    .prologue
    .line 164
    if-nez p2, :cond_0

    .line 166
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 168
    :cond_0
    iget v0, p0, Landroid/view/KeyCharacterMap;->mPointer:I

    invoke-static {v0, p1, p2, p3}, Landroid/view/KeyCharacterMap;->getMatch_native(II[CI)C

    move-result v0

    return v0
.end method

.method public getNumber(I)C
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 142
    iget v0, p0, Landroid/view/KeyCharacterMap;->mPointer:I

    invoke-static {v0, p1}, Landroid/view/KeyCharacterMap;->getNumber_native(II)C

    move-result v0

    return v0
.end method

.method public isPrintingKey(I)Z
    .locals 3
    .parameter "keyCode"

    .prologue
    const/4 v2, 0x0

    .line 335
    invoke-virtual {p0, p1, v2}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->getType(I)I

    move-result v0

    .line 337
    .local v0, type:I
    packed-switch v0, :pswitch_data_0

    .line 346
    const/4 v1, 0x1

    :goto_0
    return v1

    :pswitch_0
    move v1, v2

    .line 344
    goto :goto_0

    .line 337
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
