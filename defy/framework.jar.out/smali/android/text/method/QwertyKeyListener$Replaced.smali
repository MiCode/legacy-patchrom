.class Landroid/text/method/QwertyKeyListener$Replaced;
.super Ljava/lang/Object;
.source "QwertyKeyListener.java"

# interfaces
.implements Landroid/text/NoCopySpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/QwertyKeyListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Replaced"
.end annotation


# instance fields
.field private mText:[C


# direct methods
.method public constructor <init>([C)V
    .locals 0
    .parameter "text"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/text/method/QwertyKeyListener$Replaced;->mText:[C

    return-void
.end method

.method static synthetic access$000(Landroid/text/method/QwertyKeyListener$Replaced;)[C
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/text/method/QwertyKeyListener$Replaced;->mText:[C

    return-object v0
.end method
