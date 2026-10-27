.class public final Lf3/w;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:Lj9/x;

.field public final synthetic m:Lf3/x;

.field public final synthetic n:Lb3/k;

.field public final synthetic o:J

.field public final synthetic p:J


# direct methods
.method public constructor <init>(Lj9/x;Lf3/x;Lb3/k;JJ)V
    .locals 0

    iput-object p1, p0, Lf3/w;->l:Lj9/x;

    iput-object p2, p0, Lf3/w;->m:Lf3/x;

    iput-object p3, p0, Lf3/w;->n:Lb3/k;

    iput-wide p4, p0, Lf3/w;->o:J

    iput-wide p6, p0, Lf3/w;->p:J

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lf3/w;->m:Lf3/x;

    invoke-virtual {v0}, Lf3/x;->getPositionProvider()Lf3/z;

    move-result-object v1

    invoke-virtual {v0}, Lf3/x;->getParentLayoutDirection()Lb3/m;

    move-result-object v5

    iget-wide v6, p0, Lf3/w;->p:J

    iget-object v2, p0, Lf3/w;->n:Lb3/k;

    iget-wide v3, p0, Lf3/w;->o:J

    invoke-interface/range {v1 .. v7}, Lf3/z;->a(Lb3/k;JLb3/m;J)J

    move-result-wide v0

    iget-object p0, p0, Lf3/w;->l:Lj9/x;

    iput-wide v0, p0, Lj9/x;->l:J

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
