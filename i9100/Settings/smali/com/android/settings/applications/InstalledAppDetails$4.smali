.class Lcom/android/settings/applications/InstalledAppDetails$4;
.super Ljava/lang/Object;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/InstalledAppDetails;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/InstalledAppDetails;)V
    .locals 0
    .parameter

    .prologue
    .line 773
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails$4;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 776
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$4;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails$4;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    #getter for: Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    invoke-static {v1}, Lcom/android/settings/applications/InstalledAppDetails;->access$100(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    #calls: Lcom/android/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->access$800(Lcom/android/settings/applications/InstalledAppDetails;Ljava/lang/String;)V

    .line 777
    return-void
.end method
