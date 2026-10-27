.class public final Lr0/l2;
.super Ld1/j0;
.source "SourceFile"


# instance fields
.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(JLjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ld1/j0;-><init>(J)V

    iput-object p3, p0, Lr0/l2;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ld1/j0;)V
    .locals 1

    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableStateImpl.StateStateRecord<T of androidx.compose.runtime.SnapshotMutableStateImpl.StateStateRecord>"

    invoke-static {p1, v0}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lr0/l2;

    iget-object p1, p1, Lr0/l2;->c:Ljava/lang/Object;

    iput-object p1, p0, Lr0/l2;->c:Ljava/lang/Object;

    return-void
.end method

.method public final b(J)Ld1/j0;
    .locals 2

    new-instance p1, Lr0/l2;

    invoke-static {}, Ld1/p;->j()Ld1/g;

    move-result-object p2

    invoke-virtual {p2}, Ld1/g;->g()J

    move-result-wide v0

    iget-object p0, p0, Lr0/l2;->c:Ljava/lang/Object;

    invoke-direct {p1, v0, v1, p0}, Lr0/l2;-><init>(JLjava/lang/Object;)V

    return-object p1
.end method
