.class public final synthetic Lod/c6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Ljava/lang/String;

.field public final synthetic m:J

.field public final synthetic n:J


# direct methods
.method public synthetic constructor <init>(IJJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p6, p0, Lod/c6;->l:Ljava/lang/String;

    iput-wide p2, p0, Lod/c6;->m:J

    iput-wide p4, p0, Lod/c6;->n:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    move-object v5, p1

    check-cast v5, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v6

    iget-object v0, p0, Lod/c6;->l:Ljava/lang/String;

    iget-wide v1, p0, Lod/c6;->m:J

    iget-wide v3, p0, Lod/c6;->n:J

    invoke-static/range {v0 .. v6}, Lod/v6;->y(Ljava/lang/String;JJLr0/q;I)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
