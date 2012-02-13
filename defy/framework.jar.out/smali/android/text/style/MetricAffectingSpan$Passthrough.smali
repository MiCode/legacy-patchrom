.class Landroid/text/style/MetricAffectingSpan$Passthrough;
.super Landroid/text/style/MetricAffectingSpan;
.source "MetricAffectingSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/MetricAffectingSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Passthrough"
.end annotation


# instance fields
.field private mStyle:Landroid/text/style/MetricAffectingSpan;


# direct methods
.method public constructor <init>(Landroid/text/style/MetricAffectingSpan;)V
    .locals 0
    .parameter "cs"

    .prologue
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    iput-object p1, p0, Landroid/text/style/MetricAffectingSpan$Passthrough;->mStyle:Landroid/text/style/MetricAffectingSpan;

    return-void
.end method


# virtual methods
.method public bridge synthetic getUnderlying()Landroid/text/style/CharacterStyle;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/text/style/MetricAffectingSpan$Passthrough;->getUnderlying()Landroid/text/style/MetricAffectingSpan;

    move-result-object v0

    return-object v0
.end method

.method public getUnderlying()Landroid/text/style/MetricAffectingSpan;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/text/style/MetricAffectingSpan$Passthrough;->mStyle:Landroid/text/style/MetricAffectingSpan;

    invoke-virtual {v0}, Landroid/text/style/MetricAffectingSpan;->getUnderlying()Landroid/text/style/MetricAffectingSpan;

    move-result-object v0

    return-object v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .parameter "tp"

    .prologue
    iget-object v0, p0, Landroid/text/style/MetricAffectingSpan$Passthrough;->mStyle:Landroid/text/style/MetricAffectingSpan;

    invoke-virtual {v0, p1}, Landroid/text/style/MetricAffectingSpan;->updateDrawState(Landroid/text/TextPaint;)V

    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1
    .parameter "tp"

    .prologue
    iget-object v0, p0, Landroid/text/style/MetricAffectingSpan$Passthrough;->mStyle:Landroid/text/style/MetricAffectingSpan;

    invoke-virtual {v0, p1}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    return-void
.end method
