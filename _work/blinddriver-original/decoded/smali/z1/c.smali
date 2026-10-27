.class public final enum Lz1/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum l:Lz1/c;

.field public static final enum m:Lz1/c;

.field public static final synthetic n:[Lz1/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lz1/c;

    const-string v1, "Lsq2"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lz1/c;->l:Lz1/c;

    new-instance v1, Lz1/c;

    const-string v2, "Impulse"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lz1/c;->m:Lz1/c;

    filled-new-array {v0, v1}, [Lz1/c;

    move-result-object v0

    sput-object v0, Lz1/c;->n:[Lz1/c;

    invoke-static {v0}, Ll7/a;->k([Ljava/lang/Enum;)Lb9/b;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lz1/c;
    .locals 1

    const-class v0, Lz1/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lz1/c;

    return-object p0
.end method

.method public static values()[Lz1/c;
    .locals 1

    sget-object v0, Lz1/c;->n:[Lz1/c;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lz1/c;

    return-object v0
.end method
