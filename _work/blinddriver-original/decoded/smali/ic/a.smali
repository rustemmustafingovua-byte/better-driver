.class public final Lic/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lic/a;

.field public b:Lic/c;

.field public c:Lic/a;


# direct methods
.method public static a(Lic/a;Lic/a;)Lic/a;
    .locals 2

    invoke-virtual {p0}, Lic/a;->b()Lic/c;

    move-result-object v0

    iget-object v1, p1, Lic/a;->b:Lic/c;

    invoke-static {v0, v1}, Lic/a;->d(Lic/c;Lic/c;)Lic/a;

    move-result-object v0

    invoke-virtual {p0}, Lic/a;->c()Lic/a;

    move-result-object p0

    invoke-static {v0, p0}, Lic/a;->f(Lic/a;Lic/a;)V

    iget-object p0, v0, Lic/a;->a:Lic/a;

    iget-object p0, p0, Lic/a;->a:Lic/a;

    invoke-static {p0, p1}, Lic/a;->f(Lic/a;Lic/a;)V

    return-object v0
.end method

.method public static d(Lic/c;Lic/c;)Lic/a;
    .locals 4

    new-instance v0, Lic/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lic/a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lic/a;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lic/a;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lic/a;->a:Lic/a;

    iput-object v2, v1, Lic/a;->a:Lic/a;

    iput-object v3, v2, Lic/a;->a:Lic/a;

    iput-object v0, v3, Lic/a;->a:Lic/a;

    iput-object v0, v0, Lic/a;->c:Lic/a;

    iput-object v3, v1, Lic/a;->c:Lic/a;

    iput-object v2, v2, Lic/a;->c:Lic/a;

    iput-object v1, v3, Lic/a;->c:Lic/a;

    iput-object p0, v0, Lic/a;->b:Lic/c;

    iget-object p0, v0, Lic/a;->a:Lic/a;

    iget-object p0, p0, Lic/a;->a:Lic/a;

    iput-object p1, p0, Lic/a;->b:Lic/c;

    return-object v0
.end method

.method public static f(Lic/a;Lic/a;)V
    .locals 6

    iget-object v0, p0, Lic/a;->c:Lic/a;

    iget-object v1, v0, Lic/a;->a:Lic/a;

    iget-object v2, p1, Lic/a;->c:Lic/a;

    iget-object v3, v2, Lic/a;->a:Lic/a;

    iget-object v4, v3, Lic/a;->c:Lic/a;

    iget-object v5, v1, Lic/a;->c:Lic/a;

    iput-object v2, p0, Lic/a;->c:Lic/a;

    iput-object v0, p1, Lic/a;->c:Lic/a;

    iput-object v4, v1, Lic/a;->c:Lic/a;

    iput-object v5, v3, Lic/a;->c:Lic/a;

    return-void
.end method


# virtual methods
.method public final b()Lic/c;
    .locals 0

    iget-object p0, p0, Lic/a;->a:Lic/a;

    iget-object p0, p0, Lic/a;->a:Lic/a;

    iget-object p0, p0, Lic/a;->b:Lic/c;

    return-object p0
.end method

.method public final c()Lic/a;
    .locals 0

    iget-object p0, p0, Lic/a;->a:Lic/a;

    iget-object p0, p0, Lic/a;->a:Lic/a;

    iget-object p0, p0, Lic/a;->a:Lic/a;

    iget-object p0, p0, Lic/a;->c:Lic/a;

    iget-object p0, p0, Lic/a;->a:Lic/a;

    return-object p0
.end method

.method public final e()Lic/a;
    .locals 0

    iget-object p0, p0, Lic/a;->a:Lic/a;

    iget-object p0, p0, Lic/a;->c:Lic/a;

    iget-object p0, p0, Lic/a;->a:Lic/a;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lic/a;->b:Lic/c;

    iget-object v0, v0, Lic/c;->a:Lpb/a;

    invoke-virtual {p0}, Lic/a;->b()Lic/c;

    move-result-object p0

    iget-object p0, p0, Lic/c;->a:Lpb/a;

    invoke-static {v0, p0}, Ld7/g;->u(Lpb/a;Lpb/a;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
