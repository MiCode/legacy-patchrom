.class public Lcom/android/providers/media/MediaProvider$AppSnippet;
.super Ljava/lang/Object;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppSnippet"
.end annotation


# instance fields
.field icon:Landroid/graphics/drawable/Drawable;

.field label:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "label"
    .parameter "icon"

    .prologue
    .line 2655
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2656
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$AppSnippet;->label:Ljava/lang/CharSequence;

    .line 2657
    iput-object p2, p0, Lcom/android/providers/media/MediaProvider$AppSnippet;->icon:Landroid/graphics/drawable/Drawable;

    .line 2658
    return-void
.end method
