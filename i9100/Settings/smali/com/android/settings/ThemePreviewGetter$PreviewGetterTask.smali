.class Lcom/android/settings/ThemePreviewGetter$PreviewGetterTask;
.super Landroid/os/AsyncTask;
.source "ThemePreviewGetter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ThemePreviewGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewGetterTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field handler:Landroid/os/Handler;

.field private position:I

.field final synthetic this$0:Lcom/android/settings/ThemePreviewGetter;


# direct methods
.method private constructor <init>(Lcom/android/settings/ThemePreviewGetter;)V
    .locals 1
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/settings/ThemePreviewGetter$PreviewGetterTask;->this$0:Lcom/android/settings/ThemePreviewGetter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 125
    new-instance v0, Lcom/android/settings/ThemePreviewGetter$PreviewGetterTask$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ThemePreviewGetter$PreviewGetterTask$1;-><init>(Lcom/android/settings/ThemePreviewGetter$PreviewGetterTask;)V

    iput-object v0, p0, Lcom/android/settings/ThemePreviewGetter$PreviewGetterTask;->handler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/ThemePreviewGetter;Lcom/android/settings/ThemePreviewGetter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/settings/ThemePreviewGetter$PreviewGetterTask;-><init>(Lcom/android/settings/ThemePreviewGetter;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/ThemePreviewGetter$PreviewGetterTask;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget v0, p0, Lcom/android/settings/ThemePreviewGetter$PreviewGetterTask;->position:I

    return v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 13
    .parameter "arg0"

    .prologue
    .line 134
    array-length v8, p1

    new-array v7, v8, [Ljava/lang/String;

    .line 135
    .local v7, themenamearr:[Ljava/lang/String;
    move-object v7, p1

    .line 138
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/settings/ThemePreviewGetter$PreviewGetterTask;->position:I

    .line 139
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_4

    aget-object v6, v0, v2

    .line 140
    .local v6, themename:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/ThemePreviewGetter$PreviewGetterTask;->this$0:Lcom/android/settings/ThemePreviewGetter;

    #getter for: Lcom/android/settings/ThemePreviewGetter;->mcontext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/settings/ThemePreviewGetter;->access$300(Lcom/android/settings/ThemePreviewGetter;)Landroid/content/Context;

    move-result-object v5

    .line 141
    .local v5, themeAppContext:Landroid/content/Context;
    const v3, 0x7f0200bf

    .line 143
    .local v3, imageID:I
    iget-object v8, p0, Lcom/android/settings/ThemePreviewGetter$PreviewGetterTask;->this$0:Lcom/android/settings/ThemePreviewGetter;

    #getter for: Lcom/android/settings/ThemePreviewGetter;->mcontext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/settings/ThemePreviewGetter;->access$300(Lcom/android/settings/ThemePreviewGetter;)Landroid/content/Context;

    move-result-object v8

    if-nez v8, :cond_0

    .line 144
    const-string v8, "ThemePreviewGetter"

    const-string v9, "[Theme] mcontext is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 183
    .end local v3           #imageID:I
    .end local v5           #themeAppContext:Landroid/content/Context;
    .end local v6           #themename:Ljava/lang/String;
    :goto_1
    return-object v8

    .line 148
    .restart local v3       #imageID:I
    .restart local v5       #themeAppContext:Landroid/content/Context;
    .restart local v6       #themename:Ljava/lang/String;
    :cond_0
    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 150
    :try_start_0
    iget-object v8, p0, Lcom/android/settings/ThemePreviewGetter$PreviewGetterTask;->this$0:Lcom/android/settings/ThemePreviewGetter;

    #getter for: Lcom/android/settings/ThemePreviewGetter;->mcontext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/settings/ThemePreviewGetter;->access$300(Lcom/android/settings/ThemePreviewGetter;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v6, v9}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5

    .line 151
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "theme_preview"

    const-string v10, "drawable"

    invoke-virtual {v8, v9, v10, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 152
    if-nez v3, :cond_1

    .line 153
    iget-object v8, p0, Lcom/android/settings/ThemePreviewGetter$PreviewGetterTask;->this$0:Lcom/android/settings/ThemePreviewGetter;

    #getter for: Lcom/android/settings/ThemePreviewGetter;->mcontext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/settings/ThemePreviewGetter;->access$300(Lcom/android/settings/ThemePreviewGetter;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 154
    const v3, 0x7f0200bf

    .line 164
    :cond_1
    :goto_2
    iget-object v8, p0, Lcom/android/settings/ThemePreviewGetter$PreviewGetterTask;->this$0:Lcom/android/settings/ThemePreviewGetter;

    #getter for: Lcom/android/settings/ThemePreviewGetter;->previewholders:[Lcom/android/settings/ThemePreviewGetter$previewholder;
    invoke-static {v8}, Lcom/android/settings/ThemePreviewGetter;->access$400(Lcom/android/settings/ThemePreviewGetter;)[Lcom/android/settings/ThemePreviewGetter$previewholder;

    move-result-object v8

    iget v9, p0, Lcom/android/settings/ThemePreviewGetter$PreviewGetterTask;->position:I

    new-instance v10, Lcom/android/settings/ThemePreviewGetter$previewholder;

    iget-object v11, p0, Lcom/android/settings/ThemePreviewGetter$PreviewGetterTask;->this$0:Lcom/android/settings/ThemePreviewGetter;

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Lcom/android/settings/ThemePreviewGetter$previewholder;-><init>(Lcom/android/settings/ThemePreviewGetter;Lcom/android/settings/ThemePreviewGetter$1;)V

    aput-object v10, v8, v9

    .line 165
    iget-object v8, p0, Lcom/android/settings/ThemePreviewGetter$PreviewGetterTask;->this$0:Lcom/android/settings/ThemePreviewGetter;

    #getter for: Lcom/android/settings/ThemePreviewGetter;->previewholders:[Lcom/android/settings/ThemePreviewGetter$previewholder;
    invoke-static {v8}, Lcom/android/settings/ThemePreviewGetter;->access$400(Lcom/android/settings/ThemePreviewGetter;)[Lcom/android/settings/ThemePreviewGetter$previewholder;

    move-result-object v8

    iget v9, p0, Lcom/android/settings/ThemePreviewGetter$PreviewGetterTask;->position:I

    aget-object v8, v8, v9

    iput-object v5, v8, Lcom/android/settings/ThemePreviewGetter$previewholder;->themevalue:Landroid/content/Context;

    .line 166
    iget-object v8, p0, Lcom/android/settings/ThemePreviewGetter$PreviewGetterTask;->this$0:Lcom/android/settings/ThemePreviewGetter;

    #getter for: Lcom/android/settings/ThemePreviewGetter;->previewholders:[Lcom/android/settings/ThemePreviewGetter$previewholder;
    invoke-static {v8}, Lcom/android/settings/ThemePreviewGetter;->access$400(Lcom/android/settings/ThemePreviewGetter;)[Lcom/android/settings/ThemePreviewGetter$previewholder;

    move-result-object v8

    iget v9, p0, Lcom/android/settings/ThemePreviewGetter$PreviewGetterTask;->position:I

    aget-object v8, v8, v9

    iput v3, v8, Lcom/android/settings/ThemePreviewGetter$previewholder;->previewId:I

    .line 174
    iget-object v8, p0, Lcom/android/settings/ThemePreviewGetter$PreviewGetterTask;->this$0:Lcom/android/settings/ThemePreviewGetter;

    #getter for: Lcom/android/settings/ThemePreviewGetter;->mCurrentIndexLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/settings/ThemePreviewGetter;->access$600(Lcom/android/settings/ThemePreviewGetter;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 175
    :try_start_1
    iget v9, p0, Lcom/android/settings/ThemePreviewGetter$PreviewGetterTask;->position:I

    iget-object v10, p0, Lcom/android/settings/ThemePreviewGetter$PreviewGetterTask;->this$0:Lcom/android/settings/ThemePreviewGetter;

    #getter for: Lcom/android/settings/ThemePreviewGetter;->mCurrentIndex:I
    invoke-static {v10}, Lcom/android/settings/ThemePreviewGetter;->access$700(Lcom/android/settings/ThemePreviewGetter;)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    if-gt v9, v10, :cond_2

    iget v9, p0, Lcom/android/settings/ThemePreviewGetter$PreviewGetterTask;->position:I

    iget-object v10, p0, Lcom/android/settings/ThemePreviewGetter$PreviewGetterTask;->this$0:Lcom/android/settings/ThemePreviewGetter;

    #getter for: Lcom/android/settings/ThemePreviewGetter;->mCurrentIndex:I
    invoke-static {v10}, Lcom/android/settings/ThemePreviewGetter;->access$700(Lcom/android/settings/ThemePreviewGetter;)I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    if-lt v9, v10, :cond_2

    .line 176
    iget-object v9, p0, Lcom/android/settings/ThemePreviewGetter$PreviewGetterTask;->handler:Landroid/os/Handler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 177
    :cond_2
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 181
    iget v8, p0, Lcom/android/settings/ThemePreviewGetter$PreviewGetterTask;->position:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/settings/ThemePreviewGetter$PreviewGetterTask;->position:I

    .line 139
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 156
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 157
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "ThemePreviewGetter"

    const-string v9, "[Theme] Theme package not found."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 162
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    const v3, 0x108016d

    goto :goto_2

    .line 177
    :catchall_0
    move-exception v9

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    .line 183
    .end local v3           #imageID:I
    .end local v5           #themeAppContext:Landroid/content/Context;
    .end local v6           #themename:Ljava/lang/String;
    :cond_4
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto/16 :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/ThemePreviewGetter$PreviewGetterTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
