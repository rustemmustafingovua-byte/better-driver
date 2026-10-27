.class public final Le5/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le5/f;

.field public final c:Le5/a;

.field public final d:Le5/f;

.field public final e:Le5/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Li5/a;)V
    .locals 6

    new-instance v0, Le5/a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context.applicationContext"

    invoke-static {v1, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, p2, v3}, Le5/a;-><init>(Landroid/content/Context;Li5/a;I)V

    new-instance v1, Le5/a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-direct {v1, v3, p2, v4}, Le5/a;-><init>(Landroid/content/Context;Li5/a;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Le5/i;->a:Ljava/lang/String;

    new-instance v4, Le5/h;

    invoke-direct {v4, v3, p2}, Le5/h;-><init>(Landroid/content/Context;Li5/a;)V

    new-instance v3, Le5/a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-direct {v3, v5, p2, v2}, Le5/a;-><init>(Landroid/content/Context;Li5/a;I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le5/k;->a:Landroid/content/Context;

    iput-object v0, p0, Le5/k;->b:Le5/f;

    iput-object v1, p0, Le5/k;->c:Le5/a;

    iput-object v4, p0, Le5/k;->d:Le5/f;

    iput-object v3, p0, Le5/k;->e:Le5/f;

    return-void
.end method
