.class Lcom/android/settings/ApplicationSettings$1;
.super Ljava/lang/Object;
.source "ApplicationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ApplicationSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ApplicationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/ApplicationSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/settings/ApplicationSettings$1;->this$0:Lcom/android/settings/ApplicationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 80
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 81
    .local v1, value:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/ApplicationSettings$1;->this$0:Lcom/android/settings/ApplicationSettings;

    invoke-virtual {v2, v1}, Lcom/android/settings/ApplicationSettings;->handleUpdateAppInstallLocation(Ljava/lang/String;)V

    .line 82
    const/4 v2, 0x0

    return v2
.end method
