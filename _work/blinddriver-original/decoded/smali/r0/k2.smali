.class public final Lr0/k2;
.super Ld1/j0;
.source "SourceFile"


# instance fields
.field public c:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ld1/j0;-><init>(J)V

    iput-wide p3, p0, Lr0/k2;->c:J

    return-void
.end method


# virtual methods
.method public final a(Ld1/j0;)V
    .locals 2

    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableLongStateImpl.LongStateStateRecord"

    invoke-static {p1, v0}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lr0/k2;

    iget-wide v0, p1, Lr0/k2;->c:J

    iput-wide v0, p0, Lr0/k2;->c:J

    return-void
.end method

.method public final b(J)Ld1/j0;
    .locals 3

    new-instance v0, Lr0/k2;

    iget-wide v1, p0, Lr0/k2;->c:J

    invoke-direct {v0, p1, p2, v1, v2}, Lr0/k2;-><init>(JJ)V

    return-object v0
.end method
