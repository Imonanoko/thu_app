.class Lcom/facebook/appevents/codeless/CodelessMatcher;
.super Ljava/lang/Object;
.source "CodelessMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;,
        Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;
    }
.end annotation


# static fields
.field private static final CURRENT_CLASS_NAME:Ljava/lang/String; = "."

.field private static final PARENT_CLASS_NAME:Ljava/lang/String; = ".."

.field private static final TAG:Ljava/lang/String; = "com.facebook.appevents.codeless.CodelessMatcher"

.field private static codelessMatcher:Lcom/facebook/appevents/codeless/CodelessMatcher;


# instance fields
.field private activitiesSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private activityToListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private listenerSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final uiThreadHandler:Landroid/os/Handler;

.field private viewMatchers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher;->uiThreadHandler:Landroid/os/Handler;

    .line 74
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher;->activitiesSet:Ljava/util/Set;

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher;->viewMatchers:Ljava/util/Set;

    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher;->listenerSet:Ljava/util/HashSet;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher;->activityToListenerMap:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/appevents/codeless/CodelessMatcher;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/facebook/appevents/codeless/CodelessMatcher;->matchViews()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 59
    sget-object v0, Lcom/facebook/appevents/codeless/CodelessMatcher;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/facebook/appevents/codeless/CodelessMatcher;
    .locals 2

    const-class v0, Lcom/facebook/appevents/codeless/CodelessMatcher;

    monitor-enter v0

    .line 81
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/codeless/CodelessMatcher;->codelessMatcher:Lcom/facebook/appevents/codeless/CodelessMatcher;

    if-nez v1, :cond_0

    .line 82
    new-instance v1, Lcom/facebook/appevents/codeless/CodelessMatcher;

    invoke-direct {v1}, Lcom/facebook/appevents/codeless/CodelessMatcher;-><init>()V

    sput-object v1, Lcom/facebook/appevents/codeless/CodelessMatcher;->codelessMatcher:Lcom/facebook/appevents/codeless/CodelessMatcher;

    .line 84
    :cond_0
    sget-object v1, Lcom/facebook/appevents/codeless/CodelessMatcher;->codelessMatcher:Lcom/facebook/appevents/codeless/CodelessMatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getParameters(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Landroid/view/View;)Landroid/os/Bundle;
    .locals 10

    .line 125
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/appevents/codeless/internal/EventBinding;->getViewParameters()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 133
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/appevents/codeless/internal/ParameterComponent;

    .line 134
    iget-object v3, v2, Lcom/facebook/appevents/codeless/internal/ParameterComponent;->value:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/facebook/appevents/codeless/internal/ParameterComponent;->value:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 135
    iget-object v3, v2, Lcom/facebook/appevents/codeless/internal/ParameterComponent;->name:Ljava/lang/String;

    iget-object v2, v2, Lcom/facebook/appevents/codeless/internal/ParameterComponent;->value:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_2
    iget-object v3, v2, Lcom/facebook/appevents/codeless/internal/ParameterComponent;->path:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 138
    iget-object v3, v2, Lcom/facebook/appevents/codeless/internal/ParameterComponent;->pathType:Ljava/lang/String;

    const-string v4, "relative"

    .line 139
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 140
    iget-object v6, v2, Lcom/facebook/appevents/codeless/internal/ParameterComponent;->path:Ljava/util/List;

    const/4 v7, 0x0

    const/4 v8, -0x1

    .line 146
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    move-object v4, p0

    move-object v5, p2

    .line 140
    invoke-static/range {v4 .. v9}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->findViewByPath(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    goto :goto_1

    .line 149
    :cond_3
    iget-object v6, v2, Lcom/facebook/appevents/codeless/internal/ParameterComponent;->path:Ljava/util/List;

    const/4 v7, 0x0

    const/4 v8, -0x1

    .line 155
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    move-object v4, p0

    move-object v5, p1

    .line 149
    invoke-static/range {v4 .. v9}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->findViewByPath(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 159
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;

    .line 160
    invoke-virtual {v4}, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;->getView()Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_5

    goto :goto_2

    .line 163
    :cond_5
    invoke-virtual {v4}, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;->getView()Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getTextOfView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    .line 164
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 165
    iget-object v2, v2, Lcom/facebook/appevents/codeless/internal/ParameterComponent;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    return-object v0
.end method

.method private matchViews()V
    .locals 6

    .line 191
    iget-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher;->activitiesSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 193
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 194
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 195
    new-instance v3, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;

    iget-object v4, p0, Lcom/facebook/appevents/codeless/CodelessMatcher;->uiThreadHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/facebook/appevents/codeless/CodelessMatcher;->listenerSet:Ljava/util/HashSet;

    invoke-direct {v3, v2, v4, v5, v1}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;-><init>(Landroid/view/View;Landroid/os/Handler;Ljava/util/HashSet;Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/facebook/appevents/codeless/CodelessMatcher;->viewMatchers:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private startTracking()V
    .locals 2

    .line 177
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/facebook/appevents/codeless/CodelessMatcher;->matchViews()V

    goto :goto_0

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher;->uiThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/appevents/codeless/CodelessMatcher$1;

    invoke-direct {v1, p0}, Lcom/facebook/appevents/codeless/CodelessMatcher$1;-><init>(Lcom/facebook/appevents/codeless/CodelessMatcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public add(Landroid/app/Activity;)V
    .locals 2

    .line 88
    invoke-static {}, Lcom/facebook/internal/InternalSettings;->isUnityApp()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 91
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 94
    iget-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher;->activitiesSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher;->listenerSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 96
    iget-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher;->activityToListenerMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher;->activityToListenerMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    iput-object p1, p0, Lcom/facebook/appevents/codeless/CodelessMatcher;->listenerSet:Ljava/util/HashSet;

    .line 99
    :cond_1
    invoke-direct {p0}, Lcom/facebook/appevents/codeless/CodelessMatcher;->startTracking()V

    return-void

    .line 92
    :cond_2
    new-instance p1, Lcom/facebook/FacebookException;

    const-string v0, "Can\'t add activity to CodelessMatcher on non-UI thread"

    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public destroy(Landroid/app/Activity;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher;->activityToListenerMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public remove(Landroid/app/Activity;)V
    .locals 2

    .line 103
    invoke-static {}, Lcom/facebook/internal/InternalSettings;->isUnityApp()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 106
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 111
    iget-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher;->activitiesSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher;->viewMatchers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 113
    iget-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher;->activityToListenerMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v1, p0, Lcom/facebook/appevents/codeless/CodelessMatcher;->listenerSet:Ljava/util/HashSet;

    .line 114
    invoke-virtual {v1}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 113
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object p1, p0, Lcom/facebook/appevents/codeless/CodelessMatcher;->listenerSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    return-void

    .line 107
    :cond_1
    new-instance p1, Lcom/facebook/FacebookException;

    const-string v0, "Can\'t remove activity from CodelessMatcher on non-UI thread"

    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
