.class public final Lmb/v6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmb/r;


# instance fields
.field public final synthetic a:Ljava/util/HashMap;

.field public final synthetic b:Lmb/s5;

.field public final synthetic c:Lmb/t6;


# direct methods
.method public constructor <init>(Lmb/t6;Ljava/util/HashMap;Lmb/s5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmb/v6;->c:Lmb/t6;

    iput-object p2, p0, Lmb/v6;->a:Ljava/util/HashMap;

    iput-object p3, p0, Lmb/v6;->b:Lmb/s5;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    const-string v0, "value"

    iget-object p0, p0, Lmb/v6;->a:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final b()Lmb/b0;
    .locals 2

    iget-object v0, p0, Lmb/v6;->c:Lmb/t6;

    iget-object v0, v0, Lmb/t6;->m:Lmb/a7;

    sget-object v1, Lmb/a7;->m:Ljava/util/logging/Logger;

    iget-object p0, p0, Lmb/v6;->b:Lmb/s5;

    invoke-virtual {v0, p0}, Lmb/a7;->Z0(Lmb/s5;)Lmb/b0;

    move-result-object p0

    return-object p0
.end method
