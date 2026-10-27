.class public final Lo0/g4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/f;


# instance fields
.field public final synthetic l:Ls/i;

.field public final synthetic m:Lo0/t3;

.field public final synthetic n:Z


# direct methods
.method public constructor <init>(Ls/i;Lo0/t3;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/g4;->l:Ls/i;

    iput-object p2, p0, Lo0/g4;->m:Lo0/t3;

    iput-boolean p3, p0, Lo0/g4;->n:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p1, Lo0/o4;

    move-object v7, p2

    check-cast v7, Lr0/q;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    sget-object v0, Lo0/a4;->a:Lo0/a4;

    const-wide/16 v5, 0x0

    const/high16 v8, 0x30000

    iget-object v1, p0, Lo0/g4;->l:Ls/i;

    const/4 v2, 0x0

    iget-object v3, p0, Lo0/g4;->m:Lo0/t3;

    iget-boolean v4, p0, Lo0/g4;->n:Z

    invoke-virtual/range {v0 .. v8}, Lo0/a4;->a(Ls/i;Lf1/r;Lo0/t3;ZJLr0/q;I)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
