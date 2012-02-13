.class public Landroid/text/Layout$Directions;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Directions"
.end annotation


# instance fields
.field private mDirections:[S


# direct methods
.method constructor <init>([S)V
    .locals 0
    .parameter "dirs"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/text/Layout$Directions;->mDirections:[S

    return-void
.end method

.method static synthetic access$000(Landroid/text/Layout$Directions;)[S
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/text/Layout$Directions;->mDirections:[S

    return-object v0
.end method
