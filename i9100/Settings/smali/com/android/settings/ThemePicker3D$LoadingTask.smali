.class Lcom/android/settings/ThemePicker3D$LoadingTask;
.super Landroid/os/AsyncTask;
.source "ThemePicker3D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ThemePicker3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ThemePicker3D;


# direct methods
.method private constructor <init>(Lcom/android/settings/ThemePicker3D;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/settings/ThemePicker3D$LoadingTask;->this$0:Lcom/android/settings/ThemePicker3D;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/ThemePicker3D;Lcom/android/settings/ThemePicker3D$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/android/settings/ThemePicker3D$LoadingTask;-><init>(Lcom/android/settings/ThemePicker3D;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .parameter "v"

    .prologue
    .line 209
    monitor-enter p0

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/ThemePicker3D$LoadingTask;->this$0:Lcom/android/settings/ThemePicker3D;

    #getter for: Lcom/android/settings/ThemePicker3D;->mThemeManager:Lcom/samsung/ThemeManager;
    invoke-static {v0}, Lcom/android/settings/ThemePicker3D;->access$400(Lcom/android/settings/ThemePicker3D;)Lcom/samsung/ThemeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ThemePicker3D$LoadingTask;->this$0:Lcom/android/settings/ThemePicker3D;

    #getter for: Lcom/android/settings/ThemePicker3D;->mThemeValues:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/ThemePicker3D;->access$200(Lcom/android/settings/ThemePicker3D;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ThemePicker3D$LoadingTask;->this$0:Lcom/android/settings/ThemePicker3D;

    #getter for: Lcom/android/settings/ThemePicker3D;->mSelectedIndex:I
    invoke-static {v2}, Lcom/android/settings/ThemePicker3D;->access$300(Lcom/android/settings/ThemePicker3D;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/ThemeManager;->setCurrentThemePackage(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 199
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/ThemePicker3D$LoadingTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "success"

    .prologue
    .line 216
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 199
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/ThemePicker3D$LoadingTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/settings/ThemePicker3D$LoadingTask;->this$0:Lcom/android/settings/ThemePicker3D;

    #getter for: Lcom/android/settings/ThemePicker3D;->mLoadingDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings/ThemePicker3D;->access$000(Lcom/android/settings/ThemePicker3D;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 203
    iget-object v0, p0, Lcom/android/settings/ThemePicker3D$LoadingTask;->this$0:Lcom/android/settings/ThemePicker3D;

    const/4 v1, 0x1

    #setter for: Lcom/android/settings/ThemePicker3D;->mThemeLoading:Z
    invoke-static {v0, v1}, Lcom/android/settings/ThemePicker3D;->access$102(Lcom/android/settings/ThemePicker3D;Z)Z

    .line 204
    return-void
.end method
