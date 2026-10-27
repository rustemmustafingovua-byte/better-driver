.class public abstract Lf8/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf8/r4;


# static fields
.field public static final a:Lf8/h3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lf8/h3;->a()Lf8/h3;

    move-result-object v0

    sput-object v0, Lf8/d;->a:Lf8/h3;

    return-void
.end method


# virtual methods
.method public final b([B)Lf8/o4;
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Lf8/k;->c([BIIZ)Lf8/k;

    move-result-object p1

    sget-object v0, Lf8/d;->a:Lf8/h3;

    invoke-interface {p0, p1, v0}, Lf8/r4;->a(Lf8/k;Lf8/h3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf8/o4;

    :try_start_0
    invoke-virtual {p1, v1}, Lf8/k;->a(I)V
    :try_end_0
    .catch Lf8/h4; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lf8/p4;->p()Z

    move-result p1

    if-nez p1, :cond_1

    instance-of p1, p0, Lf8/c;

    if-eqz p1, :cond_0

    move-object p1, p0

    check-cast p1, Lf8/c;

    invoke-static {p1}, Lf8/a;->D(Lf8/c;)Landroidx/fragment/app/i0;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/fragment/app/i0;

    const-string v0, "Message was missing required fields.  (Lite runtime could not determine which fields were missing)."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    :goto_0
    new-instance v0, Lf8/h4;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lf8/h4;-><init>(Ljava/lang/String;)V

    iput-object p0, v0, Lf8/h4;->l:Lf8/o4;

    throw v0

    :cond_1
    return-object p0

    :catch_0
    move-exception p1

    iput-object p0, p1, Lf8/h4;->l:Lf8/o4;

    throw p1
.end method
