.class Lcom/android/settings/ThemePicker3D$1;
.super Ljava/lang/Object;
.source "ThemePicker3D.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ThemePicker3D;->makeView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ThemePicker3D;


# direct methods
.method constructor <init>(Lcom/android/settings/ThemePicker3D;)V
    .locals 0
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/settings/ThemePicker3D$1;->this$0:Lcom/android/settings/ThemePicker3D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 273
    new-instance v0, Lcom/android/settings/ThemePicker3D$LoadingTask;

    iget-object v1, p0, Lcom/android/settings/ThemePicker3D$1;->this$0:Lcom/android/settings/ThemePicker3D;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/ThemePicker3D$LoadingTask;-><init>(Lcom/android/settings/ThemePicker3D;Lcom/android/settings/ThemePicker3D$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/ThemePicker3D$LoadingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 274
    return-void
.end method
