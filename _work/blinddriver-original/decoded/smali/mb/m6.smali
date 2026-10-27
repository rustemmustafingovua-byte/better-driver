.class public final Lmb/m6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field public final synthetic a:Ljava/util/HashMap;

.field public final synthetic b:Lmb/o6;


# direct methods
.method public constructor <init>(Lmb/o6;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmb/m6;->b:Lmb/o6;

    iput-object p2, p0, Lmb/m6;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 2

    new-instance v0, Llb/a;

    iget-object v1, p0, Lmb/m6;->b:Lmb/o6;

    iget-object v1, v1, Lmb/o6;->f:Ljava/lang/ClassLoader;

    iget-object p0, p0, Lmb/m6;->a:Ljava/util/HashMap;

    invoke-direct {v0, p0, v1}, Llb/a;-><init>(Ljava/util/HashMap;Ljava/lang/ClassLoader;)V

    return-object v0
.end method
