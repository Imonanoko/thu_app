.class Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;
.super Landroid/os/Handler;
.source "MediaSessionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageHandler"
.end annotation


# static fields
.field private static final KEYCODE_MEDIA_PAUSE:I = 0x7f

.field private static final KEYCODE_MEDIA_PLAY:I = 0x7e

.field private static final MSG_ADD_QUEUE_ITEM:I = 0x19

.field private static final MSG_ADD_QUEUE_ITEM_AT:I = 0x1a

.field private static final MSG_ADJUST_VOLUME:I = 0x2

.field private static final MSG_COMMAND:I = 0x1

.field private static final MSG_CUSTOM_ACTION:I = 0x14

.field private static final MSG_FAST_FORWARD:I = 0x10

.field private static final MSG_MEDIA_BUTTON:I = 0x15

.field private static final MSG_NEXT:I = 0xe

.field private static final MSG_PAUSE:I = 0xc

.field private static final MSG_PLAY:I = 0x7

.field private static final MSG_PLAY_MEDIA_ID:I = 0x8

.field private static final MSG_PLAY_SEARCH:I = 0x9

.field private static final MSG_PLAY_URI:I = 0xa

.field private static final MSG_PREPARE:I = 0x3

.field private static final MSG_PREPARE_MEDIA_ID:I = 0x4

.field private static final MSG_PREPARE_SEARCH:I = 0x5

.field private static final MSG_PREPARE_URI:I = 0x6

.field private static final MSG_PREVIOUS:I = 0xf

.field private static final MSG_RATE:I = 0x13

.field private static final MSG_RATE_EXTRA:I = 0x1f

.field private static final MSG_REMOVE_QUEUE_ITEM:I = 0x1b

.field private static final MSG_REMOVE_QUEUE_ITEM_AT:I = 0x1c

.field private static final MSG_REWIND:I = 0x11

.field private static final MSG_SEEK_TO:I = 0x12

.field private static final MSG_SET_CAPTIONING_ENABLED:I = 0x1d

.field private static final MSG_SET_REPEAT_MODE:I = 0x17

.field private static final MSG_SET_SHUFFLE_MODE:I = 0x1e

.field private static final MSG_SET_VOLUME:I = 0x16

.field private static final MSG_SKIP_TO_ITEM:I = 0xb

.field private static final MSG_STOP:I = 0xd


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;Landroid/os/Looper;)V
    .locals 0

    .line 2785
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    .line 2786
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private onMediaButtonEvent(Landroid/view/KeyEvent;Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V
    .locals 7

    if-eqz p1, :cond_5

    .line 2921
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 2924
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    move-wide v3, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v3

    .line 2925
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_4

    const/16 v0, 0x7e

    if-eq p1, v0, :cond_3

    const/16 v0, 0x7f

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-wide/16 v5, 0x40

    and-long/2addr v3, v5

    cmp-long p1, v3, v1

    if-eqz p1, :cond_5

    .line 2955
    invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onFastForward()V

    goto :goto_1

    :pswitch_1
    const-wide/16 v5, 0x8

    and-long/2addr v3, v5

    cmp-long p1, v3, v1

    if-eqz p1, :cond_5

    .line 2960
    invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onRewind()V

    goto :goto_1

    :pswitch_2
    const-wide/16 v5, 0x10

    and-long/2addr v3, v5

    cmp-long p1, v3, v1

    if-eqz p1, :cond_5

    .line 2945
    invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToPrevious()V

    goto :goto_1

    :pswitch_3
    const-wide/16 v5, 0x20

    and-long/2addr v3, v5

    cmp-long p1, v3, v1

    if-eqz p1, :cond_5

    .line 2940
    invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToNext()V

    goto :goto_1

    :pswitch_4
    const-wide/16 v5, 0x1

    and-long/2addr v3, v5

    cmp-long p1, v3, v1

    if-eqz p1, :cond_5

    .line 2950
    invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onStop()V

    goto :goto_1

    :cond_2
    const-wide/16 v5, 0x2

    and-long/2addr v3, v5

    cmp-long p1, v3, v1

    if-eqz p1, :cond_5

    .line 2935
    invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPause()V

    goto :goto_1

    :cond_3
    const-wide/16 v5, 0x4

    and-long/2addr v3, v5

    cmp-long p1, v3, v1

    if-eqz p1, :cond_5

    .line 2929
    invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlay()V

    goto :goto_1

    :cond_4
    :pswitch_5
    const-string p1, "MediaSessionCompat"

    const-string p2, "KEYCODE_MEDIA_PLAY_PAUSE and KEYCODE_HEADSETHOOK are handled already"

    .line 2965
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 2809
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mCallback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    if-nez v0, :cond_0

    return-void

    .line 2813
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 2879
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/media/RatingCompat;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSetRating(Landroid/support/v4/media/RatingCompat;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 2915
    :pswitch_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSetShuffleMode(I)V

    goto/16 :goto_1

    .line 2909
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSetCaptioningEnabled(Z)V

    goto/16 :goto_1

    .line 2894
    :pswitch_4
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mQueue:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 2895
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ltz v1, :cond_1

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    iget-object v2, v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mQueue:Ljava/util/List;

    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 2896
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 2898
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onRemoveQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V

    goto/16 :goto_1

    .line 2891
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onRemoveQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V

    goto/16 :goto_1

    .line 2888
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/media/MediaDescriptionCompat;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onAddQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    goto/16 :goto_1

    .line 2885
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onAddQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V

    goto/16 :goto_1

    .line 2912
    :pswitch_8
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSetRepeatMode(I)V

    goto/16 :goto_1

    .line 2906
    :pswitch_9
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1, v2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->setVolumeTo(II)V

    goto/16 :goto_1

    .line 2819
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/KeyEvent;

    .line 2820
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.extra.KEY_EVENT"

    .line 2821
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2823
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2824
    invoke-direct {p0, p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->onMediaButtonEvent(Landroid/view/KeyEvent;Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    goto/16 :goto_1

    .line 2882
    :pswitch_b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 2876
    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/support/v4/media/RatingCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSetRating(Landroid/support/v4/media/RatingCompat;)V

    goto/16 :goto_1

    .line 2873
    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSeekTo(J)V

    goto/16 :goto_1

    .line 2870
    :pswitch_e
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onRewind()V

    goto/16 :goto_1

    .line 2867
    :pswitch_f
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onFastForward()V

    goto/16 :goto_1

    .line 2864
    :pswitch_10
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToPrevious()V

    goto/16 :goto_1

    .line 2861
    :pswitch_11
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToNext()V

    goto/16 :goto_1

    .line 2858
    :pswitch_12
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onStop()V

    goto/16 :goto_1

    .line 2855
    :pswitch_13
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPause()V

    goto/16 :goto_1

    .line 2852
    :pswitch_14
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToQueueItem(J)V

    goto :goto_1

    .line 2849
    :pswitch_15
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_1

    .line 2846
    :pswitch_16
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 2843
    :pswitch_17
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 2840
    :pswitch_18
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlay()V

    goto :goto_1

    .line 2837
    :pswitch_19
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_1

    .line 2834
    :pswitch_1a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 2831
    :pswitch_1b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 2828
    :pswitch_1c
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPrepare()V

    goto :goto_1

    .line 2903
    :pswitch_1d
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1, v2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->adjustVolume(II)V

    goto :goto_1

    .line 2815
    :pswitch_1e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;

    .line 2816
    iget-object v1, p1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;->command:Ljava/lang/String;

    iget-object v2, p1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;->extras:Landroid/os/Bundle;

    iget-object p1, p1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;->stub:Landroid/os/ResultReceiver;

    invoke-virtual {v0, v1, v2, p1}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    :cond_2
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public post(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2800
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->post(ILjava/lang/Object;)V

    return-void
.end method

.method public post(ILjava/lang/Object;)V
    .locals 0

    .line 2796
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public post(ILjava/lang/Object;I)V
    .locals 1

    const/4 v0, 0x0

    .line 2804
    invoke-virtual {p0, p1, p3, v0, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public post(ILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .line 2790
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2791
    invoke-virtual {p1, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2792
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
