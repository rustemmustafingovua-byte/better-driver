.class public final enum Lx4/k;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final enum l:Lx4/k;

.field public static final synthetic m:[Lx4/k;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lx4/k;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lx4/k;->l:Lx4/k;

    filled-new-array {v0}, [Lx4/k;

    move-result-object v0

    sput-object v0, Lx4/k;->m:[Lx4/k;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lx4/k;
    .locals 1

    const-class v0, Lx4/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lx4/k;

    return-object p0
.end method

.method public static values()[Lx4/k;
    .locals 1

    sget-object v0, Lx4/k;->m:[Lx4/k;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lx4/k;

    return-object v0
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    const-string p0, "command"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "DirectExecutor"

    return-object p0
.end method
