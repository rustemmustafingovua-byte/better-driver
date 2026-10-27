.class public final Lcd/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Lcd/b;

.field public static volatile b:Lcd/i;

.field public static volatile c:Lod/x4;

.field public static volatile d:Lp/a1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcd/b;->m:Lcd/b;

    sput-object v0, Lcd/a;->a:Lcd/b;

    sget-object v0, Lcd/i;->l:Lcd/i;

    sput-object v0, Lcd/a;->b:Lcd/i;

    return-void
.end method

.method public static a()Z
    .locals 2

    sget-object v0, Lcd/a;->d:Lp/a1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lp/a1;->invoke()Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcd/a;->a:Lcd/b;

    sget-object v1, Lcd/b;->m:Lcd/b;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcd/i;->l:Lcd/i;

    goto :goto_0

    :cond_1
    sget-object v0, Lcd/a;->b:Lcd/i;

    :goto_0
    sget-object v1, Lcd/i;->m:Lcd/i;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static b()Z
    .locals 2

    sget-object v0, Lcd/a;->d:Lp/a1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lp/a1;->invoke()Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcd/a;->a:Lcd/b;

    sget-object v1, Lcd/b;->n:Lcd/b;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static c(Lcd/b;Lcd/i;I)V
    .locals 1

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    sget-object p0, Lcd/a;->a:Lcd/b;

    :cond_0
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    sget-object p1, Lcd/a;->b:Lcd/i;

    :cond_1
    const-string p2, "lang"

    invoke-static {p0, p2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "units"

    invoke-static {p1, p2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p0, Lcd/a;->a:Lcd/b;

    sput-object p1, Lcd/a;->b:Lcd/i;

    sget-object p0, Lcd/a;->c:Lod/x4;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lod/x4;->invoke()Ljava/lang/Object;

    :cond_2
    return-void
.end method
