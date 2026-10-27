.class public final enum Lk1/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum l:Lk1/b;

.field public static final enum m:Lk1/b;

.field public static final enum n:Lk1/b;

.field public static final synthetic o:[Lk1/b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lk1/b;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk1/b;->l:Lk1/b;

    new-instance v1, Lk1/b;

    const-string v2, "Cancelled"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lk1/b;->m:Lk1/b;

    new-instance v2, Lk1/b;

    const-string v3, "Redirected"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lk1/b;->n:Lk1/b;

    new-instance v3, Lk1/b;

    const-string v4, "RedirectCancelled"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0, v1, v2, v3}, [Lk1/b;

    move-result-object v0

    sput-object v0, Lk1/b;->o:[Lk1/b;

    invoke-static {v0}, Ll7/a;->k([Ljava/lang/Enum;)Lb9/b;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lk1/b;
    .locals 1

    const-class v0, Lk1/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk1/b;

    return-object p0
.end method

.method public static values()[Lk1/b;
    .locals 1

    sget-object v0, Lk1/b;->o:[Lk1/b;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk1/b;

    return-object v0
.end method
