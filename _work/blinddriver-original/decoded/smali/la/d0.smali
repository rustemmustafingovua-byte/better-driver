.class public final Lla/d0;
.super Lla/e0;
.source "SourceFile"


# instance fields
.field public final synthetic m:J

.field public final synthetic n:Lbb/g;


# direct methods
.method public constructor <init>(Lbb/g;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lla/d0;->m:J

    iput-object p1, p0, Lla/d0;->n:Lbb/g;

    return-void
.end method


# virtual methods
.method public final c()J
    .locals 2

    iget-wide v0, p0, Lla/d0;->m:J

    return-wide v0
.end method

.method public final d()Lla/t;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final e()Lbb/i;
    .locals 0

    iget-object p0, p0, Lla/d0;->n:Lbb/g;

    return-object p0
.end method
