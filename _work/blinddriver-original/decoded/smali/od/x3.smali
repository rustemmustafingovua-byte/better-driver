.class public final synthetic Lod/x3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Ljava/lang/String;

.field public final synthetic m:J

.field public final synthetic n:Lt2/k;

.field public final synthetic o:J

.field public final synthetic p:Lf1/r;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;JLt2/k;JLf1/r;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/x3;->l:Ljava/lang/String;

    iput-wide p2, p0, Lod/x3;->m:J

    iput-object p4, p0, Lod/x3;->n:Lt2/k;

    iput-wide p5, p0, Lod/x3;->o:J

    iput-object p7, p0, Lod/x3;->p:Lf1/r;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v7, p1

    check-cast v7, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0xd81

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v8

    iget-object v0, p0, Lod/x3;->l:Ljava/lang/String;

    iget-wide v1, p0, Lod/x3;->m:J

    iget-object v3, p0, Lod/x3;->n:Lt2/k;

    iget-wide v4, p0, Lod/x3;->o:J

    iget-object v6, p0, Lod/x3;->p:Lf1/r;

    invoke-static/range {v0 .. v8}, Lod/e4;->h(Ljava/lang/String;JLt2/k;JLf1/r;Lr0/q;I)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
