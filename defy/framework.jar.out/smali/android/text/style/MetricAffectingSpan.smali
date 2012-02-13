.class public abstract Landroid/text/style/MetricAffectingSpan;
.super Landroid/text/style/CharacterStyle;
.source "MetricAffectingSpan.java"

# interfaces
.implements Landroid/text/style/UpdateLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/style/MetricAffectingSpan$Passthrough;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getUnderlying()Landroid/text/style/CharacterStyle;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/text/style/MetricAffectingSpan;->getUnderlying()Landroid/text/style/MetricAffectingSpan;

    move-result-object v0

    return-object v0
.end method

.method public getUnderlying()Landroid/text/style/MetricAffectingSpan;
    .locals 0

    .prologue
    return-object p0
.end method

.method public abstract updateMeasureState(Landroid/text/TextPaint;)V
.end method
