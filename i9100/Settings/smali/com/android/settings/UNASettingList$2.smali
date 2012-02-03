.class Lcom/android/settings/UNASettingList$2;
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


# direct methods
.method constructor <init>(Lcom/android/settings/UNASettingList;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/settings/UNASettingList$2;->this$0:Lcom/android/settings/UNASettingList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    const/4 v3, 0x1

    .line 72
    iget-object v1, p0, Lcom/android/settings/UNASettingList$2;->this$0:Lcom/android/settings/UNASettingList;

    invoke-virtual {v1}, Lcom/android/settings/UNASettingList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "una_setting"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 73
    .local v0, mode:I
    iget-object v1, p0, Lcom/android/settings/UNASettingList$2;->this$0:Lcom/android/settings/UNASettingList;

    invoke-virtual {v1}, Lcom/android/settings/UNASettingList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 74
    return-void
.end method
