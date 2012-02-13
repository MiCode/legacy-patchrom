.class final Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
.super Ljava/lang/Object;
.source "PhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DrawableFeatureState"
.end annotation


# instance fields
.field alpha:I

.field child:Landroid/graphics/drawable/Drawable;

.field cur:Landroid/graphics/drawable/Drawable;

.field curAlpha:I

.field def:Landroid/graphics/drawable/Drawable;

.field final featureId:I

.field local:Landroid/graphics/drawable/Drawable;

.field resid:I

.field uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(I)V
    .locals 1
    .parameter "_featureId"

    .prologue
    const/16 v0, 0xff

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->alpha:I

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->curAlpha:I

    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->featureId:I

    return-void
.end method
