.class public final synthetic Lc0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:Landroid/content/Context;

.field public final synthetic m:Landroid/content/pm/ResolveInfo;

.field public final synthetic n:Z

.field public final synthetic o:Ljava/lang/CharSequence;

.field public final synthetic p:J


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;ZLjava/lang/CharSequence;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc0/c;->l:Landroid/content/Context;

    iput-object p2, p0, Lc0/c;->m:Landroid/content/pm/ResolveInfo;

    iput-boolean p3, p0, Lc0/c;->n:Z

    iput-object p4, p0, Lc0/c;->o:Ljava/lang/CharSequence;

    iput-wide p5, p0, Lc0/c;->p:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Le0/g;

    iget-boolean v0, p0, Lc0/c;->n:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    new-instance v6, Lp2/l0;

    iget-wide v0, p0, Lc0/c;->p:J

    invoke-direct {v6, v0, v1}, Lp2/l0;-><init>(J)V

    sget-object v1, Lc0/b;->b:Lc0/a;

    iget-object v2, p0, Lc0/c;->l:Landroid/content/Context;

    iget-object v3, p0, Lc0/c;->m:Landroid/content/pm/ResolveInfo;

    iget-object v5, p0, Lc0/c;->o:Ljava/lang/CharSequence;

    invoke-virtual/range {v1 .. v6}, Lc0/a;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Le0/g;->close()V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
