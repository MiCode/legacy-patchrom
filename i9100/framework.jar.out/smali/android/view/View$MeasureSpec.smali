.class public Landroid/view/View$MeasureSpec;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MeasureSpec"
.end annotation


# static fields
.field public static final AT_MOST:I = -0x80000000

.field public static final EXACTLY:I = 0x40000000

.field private static final MODE_MASK:I = -0x40000000

.field private static final MODE_SHIFT:I = 0x1e

.field public static final UNSPECIFIED:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9031
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMode(I)I
    .locals 1
    .parameter "measureSpec"

    .prologue
    .line 9081
    const/high16 v0, -0x4000

    and-int/2addr v0, p0

    return v0
.end method

.method public static getSize(I)I
    .locals 1
    .parameter "measureSpec"

    .prologue
    .line 9091
    const v0, 0x3fffffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static makeMeasureSpec(II)I
    .locals 1
    .parameter "size"
    .parameter "mode"

    .prologue
    .line 9069
    add-int v0, p0, p1

    return v0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 5
    .parameter "measureSpec"

    .prologue
    .line 9102
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 9103
    .local v0, mode:I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 9105
    .local v2, size:I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "MeasureSpec: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9107
    .local v1, sb:Ljava/lang/StringBuilder;
    if-nez v0, :cond_0

    .line 9108
    const-string v3, "UNSPECIFIED "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9116
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9117
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 9109
    :cond_0
    const/high16 v3, 0x4000

    if-ne v0, v3, :cond_1

    .line 9110
    const-string v3, "EXACTLY "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 9111
    :cond_1
    const/high16 v3, -0x8000

    if-ne v0, v3, :cond_2

    .line 9112
    const-string v3, "AT_MOST "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 9114
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
