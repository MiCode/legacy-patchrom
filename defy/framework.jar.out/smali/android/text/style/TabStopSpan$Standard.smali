.class public Landroid/text/style/TabStopSpan$Standard;
.super Ljava/lang/Object;
.source "TabStopSpan.java"

# interfaces
.implements Landroid/text/style/TabStopSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/TabStopSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Standard"
.end annotation


# instance fields
.field private mTab:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "where"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/text/style/TabStopSpan$Standard;->mTab:I

    return-void
.end method


# virtual methods
.method public getTabStop()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/text/style/TabStopSpan$Standard;->mTab:I

    return v0
.end method
