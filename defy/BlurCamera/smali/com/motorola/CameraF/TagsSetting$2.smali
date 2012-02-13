.class Lcom/motorola/CameraF/TagsSetting$2;
.super Ljava/lang/Object;
.source "TagsSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/CameraF/TagsSetting;->checkGolbalLocationSetting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/CameraF/TagsSetting;


# direct methods
.method constructor <init>(Lcom/motorola/CameraF/TagsSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/motorola/CameraF/TagsSetting$2;->this$0:Lcom/motorola/CameraF/TagsSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 172
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 173
    .local v0, locationSettingIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/motorola/CameraF/TagsSetting$2;->this$0:Lcom/motorola/CameraF/TagsSetting;

    invoke-virtual {v1, v0}, Lcom/motorola/CameraF/TagsSetting;->startActivity(Landroid/content/Intent;)V

    .line 175
    return-void
.end method
