.class public final synthetic Lp/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:Lm1/m;

.field public final synthetic m:J

.field public final synthetic n:J

.field public final synthetic o:Lo1/e;


# direct methods
.method public synthetic constructor <init>(Lm1/j0;JJLo1/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp/s;->l:Lm1/m;

    iput-wide p2, p0, Lp/s;->m:J

    iput-wide p4, p0, Lp/s;->n:J

    iput-object p6, p0, Lp/s;->o:Lo1/e;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v0, p1

    check-cast v0, Le2/j0;

    invoke-virtual {v0}, Le2/j0;->b()V

    const/4 v6, 0x0

    const/16 v8, 0x68

    iget-object v1, p0, Lp/s;->l:Lm1/m;

    iget-wide v2, p0, Lp/s;->m:J

    iget-wide v4, p0, Lp/s;->n:J

    iget-object v7, p0, Lp/s;->o:Lo1/e;

    invoke-static/range {v0 .. v8}, Lo1/d;->c0(Le2/j0;Lm1/m;JJFLo1/e;I)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
