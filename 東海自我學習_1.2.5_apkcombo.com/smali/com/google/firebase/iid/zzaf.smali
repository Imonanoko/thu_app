.class final synthetic Lcom/google/firebase/iid/zzaf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# static fields
.field static final zzby:Lcom/google/firebase/components/ComponentFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/iid/zzaf;

    invoke-direct {v0}, Lcom/google/firebase/iid/zzaf;-><init>()V

    sput-object v0, Lcom/google/firebase/iid/zzaf;->zzby:Lcom/google/firebase/components/ComponentFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    const-class v1, Lcom/google/firebase/FirebaseApp;

    invoke-interface {p1, v1}, Lcom/google/firebase/components/ComponentContainer;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/FirebaseApp;

    invoke-direct {v0, p1}, Lcom/google/firebase/iid/FirebaseInstanceId;-><init>(Lcom/google/firebase/FirebaseApp;)V

    return-object v0
.end method
