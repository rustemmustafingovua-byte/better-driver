.class final Ldadb/MessageQueue$read$commandQueue$1;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldadb/MessageQueue;->read()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj9/o;",
        "Li9/c;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Ldadb/MessageQueue$read$commandQueue$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldadb/MessageQueue$read$commandQueue$1;

    invoke-direct {v0}, Ldadb/MessageQueue$read$commandQueue$1;-><init>()V

    sput-object v0, Ldadb/MessageQueue$read$commandQueue$1;->INSTANCE:Ldadb/MessageQueue$read$commandQueue$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ldadb/MessageQueue$read$commandQueue$1;->invoke(Ljava/lang/Integer;)Ljava/util/Queue;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ljava/lang/Integer;)Ljava/util/Queue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/Queue<",
            "TV;>;"
        }
    .end annotation

    const-string p0, "it"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    return-object p0
.end method
