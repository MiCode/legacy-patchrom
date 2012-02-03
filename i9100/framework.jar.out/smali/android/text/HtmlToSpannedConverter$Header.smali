.class Landroid/text/HtmlToSpannedConverter$Header;
.super Ljava/lang/Object;
.source "Html.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/HtmlToSpannedConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Header"
.end annotation


# instance fields
.field private mLevel:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "level"

    .prologue
    .line 817
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 818
    iput p1, p0, Landroid/text/HtmlToSpannedConverter$Header;->mLevel:I

    .line 819
    return-void
.end method

.method static synthetic access$900(Landroid/text/HtmlToSpannedConverter$Header;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 814
    iget v0, p0, Landroid/text/HtmlToSpannedConverter$Header;->mLevel:I

    return v0
.end method
