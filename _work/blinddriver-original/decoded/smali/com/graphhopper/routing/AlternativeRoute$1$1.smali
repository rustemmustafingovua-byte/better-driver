.class Lcom/graphhopper/routing/AlternativeRoute$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo5/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/graphhopper/routing/AlternativeRoute$1;->isAlreadyExisting(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo5/b;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/graphhopper/routing/AlternativeRoute$1;

.field final synthetic val$exists:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$tid:I


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/AlternativeRoute$1;ILjava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/graphhopper/routing/AlternativeRoute$1$1;->this$1:Lcom/graphhopper/routing/AlternativeRoute$1;

    iput p2, p0, Lcom/graphhopper/routing/AlternativeRoute$1$1;->val$tid:I

    iput-object p3, p0, Lcom/graphhopper/routing/AlternativeRoute$1$1;->val$exists:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(ILcom/carrotsearch/hppc/r0;)Z
    .locals 0

    .line 2
    iget p1, p0, Lcom/graphhopper/routing/AlternativeRoute$1$1;->val$tid:I

    invoke-interface {p2, p1}, Lcom/carrotsearch/hppc/z;->contains(I)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/graphhopper/routing/AlternativeRoute$1$1;->val$exists:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 p0, 0x0

    return p0

    :cond_0
    return p2
.end method

.method public bridge synthetic apply(ILjava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/carrotsearch/hppc/r0;

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/routing/AlternativeRoute$1$1;->apply(ILcom/carrotsearch/hppc/r0;)Z

    move-result p0

    return p0
.end method
