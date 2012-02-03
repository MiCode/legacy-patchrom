.class public Landroid/sec/clipboard/data/ClipboardDefine;
.super Ljava/lang/Object;
.source "ClipboardDefine.java"


# static fields
.field public static final CLIPBOARD_TAG:Ljava/lang/String; = "ClipboardServiceEx"

.field public static DEFAULT_PATH:Ljava/lang/String; = null

.field public static final FORMAT_ALL_ID:I = 0x1

.field public static final FORMAT_BITMAP:Ljava/lang/String; = "Bitmap"

.field public static final FORMAT_BITMAP_ID:I = 0x3

.field public static final FORMAT_HTML_FLAGMENT:Ljava/lang/String; = "HTMLFlagment"

.field public static final FORMAT_HTML_FLAGMENT_ID:I = 0x4

.field public static final FORMAT_TEXT:Ljava/lang/String; = "Text"

.field public static final FORMAT_TEXT_ID:I = 0x2

.field public static final MAX_DATA_COUNT:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-string v0, ""

    sput-object v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEFAULT_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
