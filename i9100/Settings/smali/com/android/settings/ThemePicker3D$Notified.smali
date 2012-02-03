.class Lcom/android/settings/ThemePicker3D$Notified;
.super Ljava/lang/Object;
.source "ThemePicker3D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ThemePicker3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Notified"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ThemePicker3D;


# direct methods
.method constructor <init>(Lcom/android/settings/ThemePicker3D;)V
    .locals 0
    .parameter

    .prologue
    .line 390
    iput-object p1, p0, Lcom/android/settings/ThemePicker3D$Notified;->this$0:Lcom/android/settings/ThemePicker3D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updatepreviewimage(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/settings/ThemePicker3D$Notified;->this$0:Lcom/android/settings/ThemePicker3D;

    #getter for: Lcom/android/settings/ThemePicker3D;->mThemeImageAdapter:Lcom/android/settings/ThemePicker3D$ImageAdapter;
    invoke-static {v0}, Lcom/android/settings/ThemePicker3D;->access$1000(Lcom/android/settings/ThemePicker3D;)Lcom/android/settings/ThemePicker3D$ImageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/ThemePicker3D$ImageAdapter;->notifyDataSetChanged()V

    .line 394
    return-void
.end method
