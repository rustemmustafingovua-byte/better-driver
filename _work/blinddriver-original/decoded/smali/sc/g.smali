.class public abstract Lsc/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr0/b1;

.field public static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr0/b1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lr0/b1;-><init>(I)V

    sput-object v0, Lsc/g;->a:Lr0/b1;

    return-void
.end method

.method public static a(Landroid/content/ContextWrapper;)V
    .locals 3

    sget-boolean v0, Lsc/g;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lsc/g;->b:Z

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "lang"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "uk"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcd/b;->n:Lcd/b;

    goto :goto_0

    :cond_1
    sget-object v0, Lcd/b;->m:Lcd/b;

    :goto_0
    const-string v1, "units"

    const-string v2, "metric"

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "imperial"

    invoke-static {v1, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcd/i;->m:Lcd/i;

    goto :goto_1

    :cond_2
    sget-object v1, Lcd/i;->l:Lcd/i;

    :goto_1
    sget-object v2, Lcd/a;->a:Lcd/b;

    sput-object v0, Lcd/a;->a:Lcd/b;

    sput-object v1, Lcd/a;->b:Lcd/i;

    new-instance v0, Lp/a1;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lp/a1;-><init>(I)V

    sput-object v0, Lcd/a;->d:Lp/a1;

    new-instance v0, Lod/x4;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0}, Lod/x4;-><init>(ILjava/lang/Object;)V

    sput-object v0, Lcd/a;->c:Lod/x4;

    return-void
.end method
