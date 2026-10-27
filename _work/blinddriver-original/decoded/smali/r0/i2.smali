.class public final Lr0/i2;
.super Ld1/j0;
.source "SourceFile"


# instance fields
.field public c:F


# direct methods
.method public constructor <init>(FJ)V
    .locals 0

    invoke-direct {p0, p2, p3}, Ld1/j0;-><init>(J)V

    iput p1, p0, Lr0/i2;->c:F

    return-void
.end method


# virtual methods
.method public final a(Ld1/j0;)V
    .locals 1

    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableFloatStateImpl.FloatStateStateRecord"

    invoke-static {p1, v0}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lr0/i2;

    iget p1, p1, Lr0/i2;->c:F

    iput p1, p0, Lr0/i2;->c:F

    return-void
.end method

.method public final b(J)Ld1/j0;
    .locals 1

    new-instance v0, Lr0/i2;

    iget p0, p0, Lr0/i2;->c:F

    invoke-direct {v0, p0, p1, p2}, Lr0/i2;-><init>(FJ)V

    return-object v0
.end method
