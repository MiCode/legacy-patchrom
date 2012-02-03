.class Lcom/android/settings/UNASettingList$1;
.super Ljava/lang/Object;
.source "UNASettingList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/UNASettingList;->showChargingDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/UNASettingList;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/settings/UNASettingList;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/settings/UNASettingList$1;->this$0:Lcom/android/settings/UNASettingList;

    iput p2, p0, Lcom/android/settings/UNASettingList$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/UNASettingList$1;->this$0:Lcom/android/settings/UNASettingList;

    invoke-virtual {v0}, Lcom/android/settings/UNASettingList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "una_setting"

    iget v2, p0, Lcom/android/settings/UNASettingList$1;->val$position:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 79
    const-string v0, "UNASetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/UNASettingList$1;->val$position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/android/settings/UNASettingList$1;->this$0:Lcom/android/settings/UNASettingList;

    invoke-virtual {v0}, Lcom/android/settings/UNASettingList;->finish()V

    .line 81
    return-void
.end method
