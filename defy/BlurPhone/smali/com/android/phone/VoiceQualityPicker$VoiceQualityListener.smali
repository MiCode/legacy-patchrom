.class public Lcom/android/phone/VoiceQualityPicker$VoiceQualityListener;
.super Ljava/lang/Object;
.source "VoiceQualityPicker.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/VoiceQualityPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VoiceQualityListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/VoiceQualityPicker;


# direct methods
.method protected constructor <init>(Lcom/android/phone/VoiceQualityPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/phone/VoiceQualityPicker$VoiceQualityListener;->this$0:Lcom/android/phone/VoiceQualityPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter "dialogIFace"

    .prologue
    .line 126
    iget-object v1, p0, Lcom/android/phone/VoiceQualityPicker$VoiceQualityListener;->this$0:Lcom/android/phone/VoiceQualityPicker;

    invoke-virtual {v1}, Lcom/android/phone/VoiceQualityPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->getApSettings(Landroid/content/Context;)I

    move-result v0

    .line 128
    .local v0, oldSettings:I
    iget-object v1, p0, Lcom/android/phone/VoiceQualityPicker$VoiceQualityListener;->this$0:Lcom/android/phone/VoiceQualityPicker;

    #getter for: Lcom/android/phone/VoiceQualityPicker;->mSelection:I
    invoke-static {v1}, Lcom/android/phone/VoiceQualityPicker;->access$000(Lcom/android/phone/VoiceQualityPicker;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 130
    iget-object v1, p0, Lcom/android/phone/VoiceQualityPicker$VoiceQualityListener;->this$0:Lcom/android/phone/VoiceQualityPicker;

    #setter for: Lcom/android/phone/VoiceQualityPicker;->mSelection:I
    invoke-static {v1, v0}, Lcom/android/phone/VoiceQualityPicker;->access$002(Lcom/android/phone/VoiceQualityPicker;I)I

    .line 131
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/phone/VoiceQualityPicker$VoiceQualityListener;->this$0:Lcom/android/phone/VoiceQualityPicker;

    #getter for: Lcom/android/phone/VoiceQualityPicker;->mSelection:I
    invoke-static {v2}, Lcom/android/phone/VoiceQualityPicker;->access$000(Lcom/android/phone/VoiceQualityPicker;)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 133
    iget-object v1, p0, Lcom/android/phone/VoiceQualityPicker$VoiceQualityListener;->this$0:Lcom/android/phone/VoiceQualityPicker;

    #getter for: Lcom/android/phone/VoiceQualityPicker;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/phone/VoiceQualityPicker;->access$600(Lcom/android/phone/VoiceQualityPicker;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/VoiceQualityPicker$VoiceQualityListener;->this$0:Lcom/android/phone/VoiceQualityPicker;

    #getter for: Lcom/android/phone/VoiceQualityPicker;->mSelection:I
    invoke-static {v2}, Lcom/android/phone/VoiceQualityPicker;->access$000(Lcom/android/phone/VoiceQualityPicker;)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 135
    iget-object v1, p0, Lcom/android/phone/VoiceQualityPicker$VoiceQualityListener;->this$0:Lcom/android/phone/VoiceQualityPicker;

    #getter for: Lcom/android/phone/VoiceQualityPicker;->mLivePreview:Z
    invoke-static {v1}, Lcom/android/phone/VoiceQualityPicker;->access$100(Lcom/android/phone/VoiceQualityPicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/android/phone/VoiceQualityPicker$VoiceQualityListener;->this$0:Lcom/android/phone/VoiceQualityPicker;

    invoke-virtual {v1}, Lcom/android/phone/VoiceQualityPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/VoiceQualityPicker$VoiceQualityListener;->this$0:Lcom/android/phone/VoiceQualityPicker;

    #getter for: Lcom/android/phone/VoiceQualityPicker;->mSelection:I
    invoke-static {v2}, Lcom/android/phone/VoiceQualityPicker;->access$000(Lcom/android/phone/VoiceQualityPicker;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtils;->setApProfile(Landroid/content/Context;I)V

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/android/phone/VoiceQualityPicker$VoiceQualityListener;->this$0:Lcom/android/phone/VoiceQualityPicker;

    #calls: Lcom/android/phone/VoiceQualityPicker;->stopPlayback()V
    invoke-static {v1}, Lcom/android/phone/VoiceQualityPicker;->access$500(Lcom/android/phone/VoiceQualityPicker;)V

    .line 144
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialogIFace"
    .parameter "which"

    .prologue
    const/4 v1, -0x1

    .line 111
    if-ne v1, p2, :cond_2

    .line 113
    iget-object v0, p0, Lcom/android/phone/VoiceQualityPicker$VoiceQualityListener;->this$0:Lcom/android/phone/VoiceQualityPicker;

    #getter for: Lcom/android/phone/VoiceQualityPicker;->mSelection:I
    invoke-static {v0}, Lcom/android/phone/VoiceQualityPicker;->access$000(Lcom/android/phone/VoiceQualityPicker;)I

    move-result v0

    if-eq v1, v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/phone/VoiceQualityPicker$VoiceQualityListener;->this$0:Lcom/android/phone/VoiceQualityPicker;

    invoke-virtual {v0}, Lcom/android/phone/VoiceQualityPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/VoiceQualityPicker$VoiceQualityListener;->this$0:Lcom/android/phone/VoiceQualityPicker;

    #getter for: Lcom/android/phone/VoiceQualityPicker;->mSelection:I
    invoke-static {v1}, Lcom/android/phone/VoiceQualityPicker;->access$000(Lcom/android/phone/VoiceQualityPicker;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->setApSettings(Landroid/content/Context;I)V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/phone/VoiceQualityPicker$VoiceQualityListener;->this$0:Lcom/android/phone/VoiceQualityPicker;

    #calls: Lcom/android/phone/VoiceQualityPicker;->stopPlayback()V
    invoke-static {v0}, Lcom/android/phone/VoiceQualityPicker;->access$500(Lcom/android/phone/VoiceQualityPicker;)V

    .line 123
    :cond_1
    :goto_0
    return-void

    .line 119
    :cond_2
    const/4 v0, -0x2

    if-ne v0, p2, :cond_1

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/phone/VoiceQualityPicker$VoiceQualityListener;->onCancel(Landroid/content/DialogInterface;)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "listItem"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, listView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x0

    .line 88
    iget-object v3, p0, Lcom/android/phone/VoiceQualityPicker$VoiceQualityListener;->this$0:Lcom/android/phone/VoiceQualityPicker;

    #setter for: Lcom/android/phone/VoiceQualityPicker;->mSelection:I
    invoke-static {v3, p3}, Lcom/android/phone/VoiceQualityPicker;->access$002(Lcom/android/phone/VoiceQualityPicker;I)I

    .line 90
    iget-object v3, p0, Lcom/android/phone/VoiceQualityPicker$VoiceQualityListener;->this$0:Lcom/android/phone/VoiceQualityPicker;

    #getter for: Lcom/android/phone/VoiceQualityPicker;->mLivePreview:Z
    invoke-static {v3}, Lcom/android/phone/VoiceQualityPicker;->access$100(Lcom/android/phone/VoiceQualityPicker;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 93
    new-instance v1, Landroid/media/ToneGenerator;

    const/16 v3, 0x64

    invoke-direct {v1, v6, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 95
    .local v1, tg:Landroid/media/ToneGenerator;
    const/16 v3, 0x19

    invoke-virtual {v1, v3}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 98
    iget-object v3, p0, Lcom/android/phone/VoiceQualityPicker$VoiceQualityListener;->this$0:Lcom/android/phone/VoiceQualityPicker;

    invoke-virtual {v3}, Lcom/android/phone/VoiceQualityPicker;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p3}, Lcom/android/phone/PhoneUtils;->setApProfile(Landroid/content/Context;I)V

    .line 108
    .end local v1           #tg:Landroid/media/ToneGenerator;
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v3, p0, Lcom/android/phone/VoiceQualityPicker$VoiceQualityListener;->this$0:Lcom/android/phone/VoiceQualityPicker;

    #getter for: Lcom/android/phone/VoiceQualityPicker;->mSamplePreview:Z
    invoke-static {v3}, Lcom/android/phone/VoiceQualityPicker;->access$200(Lcom/android/phone/VoiceQualityPicker;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/VoiceQualityPicker$VoiceQualityListener;->this$0:Lcom/android/phone/VoiceQualityPicker;

    #getter for: Lcom/android/phone/VoiceQualityPicker;->mPlayer:Lcom/android/phone/VoiceQualityPicker$SamplePlayer;
    invoke-static {v3}, Lcom/android/phone/VoiceQualityPicker;->access$300(Lcom/android/phone/VoiceQualityPicker;)Lcom/android/phone/VoiceQualityPicker$SamplePlayer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 102
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 103
    .local v2, uriBuilder:Landroid/net/Uri$Builder;
    const-string v3, "/system/media/audio/ui"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 104
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 105
    .local v0, sampleUri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/phone/VoiceQualityPicker;->access$400()Ljava/util/HashMap;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 106
    iget-object v3, p0, Lcom/android/phone/VoiceQualityPicker$VoiceQualityListener;->this$0:Lcom/android/phone/VoiceQualityPicker;

    #getter for: Lcom/android/phone/VoiceQualityPicker;->mPlayer:Lcom/android/phone/VoiceQualityPicker$SamplePlayer;
    invoke-static {v3}, Lcom/android/phone/VoiceQualityPicker;->access$300(Lcom/android/phone/VoiceQualityPicker;)Lcom/android/phone/VoiceQualityPicker$SamplePlayer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/VoiceQualityPicker$VoiceQualityListener;->this$0:Lcom/android/phone/VoiceQualityPicker;

    invoke-virtual {v4}, Lcom/android/phone/VoiceQualityPicker;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v0, v6, v5}, Lcom/android/phone/VoiceQualityPicker$SamplePlayer;->play(Landroid/content/Context;Landroid/net/Uri;ZI)V

    goto :goto_0
.end method
