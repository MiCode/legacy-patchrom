.class public Landroid/text/style/LeadingMarginSpan$Standard;
.super Ljava/lang/Object;
.source "LeadingMarginSpan.java"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;
.implements Landroid/text/ParcelableSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/LeadingMarginSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Standard"
.end annotation


# instance fields
.field private final mFirst:I

.field private final mRest:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "every"

    .prologue
    invoke-direct {p0, p1, p1}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "first"
    .parameter "rest"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/text/style/LeadingMarginSpan$Standard;->mFirst:I

    iput p2, p0, Landroid/text/style/LeadingMarginSpan$Standard;->mRest:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "src"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/LeadingMarginSpan$Standard;->mFirst:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/LeadingMarginSpan$Standard;->mRest:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 0
    .parameter "c"
    .parameter "p"
    .parameter "x"
    .parameter "dir"
    .parameter "top"
    .parameter "baseline"
    .parameter "bottom"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "first"
    .parameter "layout"

    .prologue
    return-void
.end method

.method public getLeadingMargin(Z)I
    .locals 1
    .parameter "first"

    .prologue
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/text/style/LeadingMarginSpan$Standard;->mFirst:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/text/style/LeadingMarginSpan$Standard;->mRest:I

    goto :goto_0
.end method

.method public getSpanTypeId()I
    .locals 1

    .prologue
    const/16 v0, 0xa

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    iget v0, p0, Landroid/text/style/LeadingMarginSpan$Standard;->mFirst:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/text/style/LeadingMarginSpan$Standard;->mRest:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
