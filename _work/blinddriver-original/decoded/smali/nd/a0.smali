.class public final synthetic Lnd/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Ljava/lang/String;

.field public final synthetic m:J

.field public final synthetic n:J

.field public final synthetic o:J

.field public final synthetic p:Lt2/k;

.field public final synthetic q:I

.field public final synthetic r:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;JJJLt2/k;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnd/a0;->l:Ljava/lang/String;

    iput-wide p2, p0, Lnd/a0;->m:J

    iput-wide p4, p0, Lnd/a0;->n:J

    iput-wide p6, p0, Lnd/a0;->o:J

    iput-object p8, p0, Lnd/a0;->p:Lt2/k;

    iput p9, p0, Lnd/a0;->q:I

    iput p10, p0, Lnd/a0;->r:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v8, p1

    check-cast v8, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lnd/a0;->q:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v9

    iget-object v0, p0, Lnd/a0;->l:Ljava/lang/String;

    iget-wide v1, p0, Lnd/a0;->m:J

    iget-wide v3, p0, Lnd/a0;->n:J

    iget-wide v5, p0, Lnd/a0;->o:J

    iget-object v7, p0, Lnd/a0;->p:Lt2/k;

    iget v10, p0, Lnd/a0;->r:I

    invoke-static/range {v0 .. v10}, Lnd/h0;->e(Ljava/lang/String;JJJLt2/k;Lr0/q;II)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
