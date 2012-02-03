.class Lcom/android/settings/ThemePreviewGetter$previewholder;
.super Ljava/lang/Object;
.source "ThemePreviewGetter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ThemePreviewGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "previewholder"
.end annotation


# instance fields
.field previewId:I

.field themevalue:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/settings/ThemePreviewGetter;


# direct methods
.method private constructor <init>(Lcom/android/settings/ThemePreviewGetter;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/settings/ThemePreviewGetter$previewholder;->this$0:Lcom/android/settings/ThemePreviewGetter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/ThemePreviewGetter;Lcom/android/settings/ThemePreviewGetter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/ThemePreviewGetter$previewholder;-><init>(Lcom/android/settings/ThemePreviewGetter;)V

    return-void
.end method
