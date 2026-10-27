.class public final synthetic Lnd/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Ljava/lang/String;

.field public final synthetic m:J

.field public final synthetic n:J

.field public final synthetic o:Lb3/f;

.field public final synthetic p:I

.field public final synthetic q:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;JJLb3/f;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnd/y;->l:Ljava/lang/String;

    iput-wide p2, p0, Lnd/y;->m:J

    iput-wide p4, p0, Lnd/y;->n:J

    iput-object p6, p0, Lnd/y;->o:Lb3/f;

    iput p7, p0, Lnd/y;->p:I

    iput p8, p0, Lnd/y;->q:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v6, p1

    check-cast v6, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lnd/y;->p:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v7

    iget-object v0, p0, Lnd/y;->l:Ljava/lang/String;

    iget-wide v1, p0, Lnd/y;->m:J

    iget-wide v3, p0, Lnd/y;->n:J

    iget-object v5, p0, Lnd/y;->o:Lb3/f;

    iget v8, p0, Lnd/y;->q:I

    invoke-static/range {v0 .. v8}, Lnd/h0;->b(Ljava/lang/String;JJLb3/f;Lr0/q;II)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
