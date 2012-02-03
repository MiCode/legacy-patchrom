.class public Landroid/webkit/Plugin;
.super Ljava/lang/Object;
.source "Plugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/Plugin$1;,
        Landroid/webkit/Plugin$DefaultClickHandler;,
        Landroid/webkit/Plugin$PreferencesClickHandler;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mHandler:Landroid/webkit/Plugin$PreferencesClickHandler;

.field private mName:Ljava/lang/String;

.field private mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "path"
    .parameter "fileName"
    .parameter "description"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Landroid/webkit/Plugin;->mName:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Landroid/webkit/Plugin;->mPath:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Landroid/webkit/Plugin;->mFileName:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Landroid/webkit/Plugin;->mDescription:Ljava/lang/String;

    .line 58
    new-instance v0, Landroid/webkit/Plugin$DefaultClickHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/webkit/Plugin$DefaultClickHandler;-><init>(Landroid/webkit/Plugin;Landroid/webkit/Plugin$1;)V

    iput-object v0, p0, Landroid/webkit/Plugin;->mHandler:Landroid/webkit/Plugin$PreferencesClickHandler;

    .line 59
    return-void
.end method

.method static synthetic access$100(Landroid/webkit/Plugin;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Landroid/webkit/Plugin;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/webkit/Plugin;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Landroid/webkit/Plugin;->mName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public dispatchClickEvent(Landroid/content/Context;)V
    .locals 1
    .parameter "context"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Landroid/webkit/Plugin;->mHandler:Landroid/webkit/Plugin$PreferencesClickHandler;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Landroid/webkit/Plugin;->mHandler:Landroid/webkit/Plugin$PreferencesClickHandler;

    invoke-interface {v0, p1}, Landroid/webkit/Plugin$PreferencesClickHandler;->handleClickEvent(Landroid/content/Context;)V

    .line 162
    :cond_0
    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Landroid/webkit/Plugin;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Landroid/webkit/Plugin;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Landroid/webkit/Plugin;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Landroid/webkit/Plugin;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public setClickHandler(Landroid/webkit/Plugin$PreferencesClickHandler;)V
    .locals 0
    .parameter "handler"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 148
    iput-object p1, p0, Landroid/webkit/Plugin;->mHandler:Landroid/webkit/Plugin$PreferencesClickHandler;

    .line 149
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 139
    iput-object p1, p0, Landroid/webkit/Plugin;->mDescription:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "fileName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 130
    iput-object p1, p0, Landroid/webkit/Plugin;->mFileName:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 112
    iput-object p1, p0, Landroid/webkit/Plugin;->mName:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 121
    iput-object p1, p0, Landroid/webkit/Plugin;->mPath:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Landroid/webkit/Plugin;->mName:Ljava/lang/String;

    return-object v0
.end method
