.class public final enum Lr5/n;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum l:Lr5/n;

.field public static final enum m:Lr5/n;

.field public static final enum n:Lr5/n;

.field public static final enum o:Lr5/n;

.field public static final enum p:Lr5/n;

.field public static final enum q:Lr5/n;

.field public static final synthetic r:[Lr5/n;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lr5/n;

    const-string v1, "ACCEPT_SINGLE_VALUE_AS_ARRAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr5/n;->l:Lr5/n;

    new-instance v1, Lr5/n;

    const-string v2, "ACCEPT_CASE_INSENSITIVE_PROPERTIES"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lr5/n;->m:Lr5/n;

    new-instance v2, Lr5/n;

    const-string v3, "READ_UNKNOWN_ENUM_VALUES_AS_NULL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lr5/n;->n:Lr5/n;

    new-instance v3, Lr5/n;

    const-string v4, "READ_UNKNOWN_ENUM_VALUES_USING_DEFAULT_VALUE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lr5/n;->o:Lr5/n;

    new-instance v4, Lr5/n;

    const-string v5, "READ_DATE_TIMESTAMPS_AS_NANOSECONDS"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lr5/n;

    const-string v6, "ACCEPT_CASE_INSENSITIVE_VALUES"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v6, Lr5/n;

    const-string v7, "WRITE_DATE_TIMESTAMPS_AS_NANOSECONDS"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v7, Lr5/n;

    const-string v8, "WRITE_DATES_WITH_ZONE_ID"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v8, Lr5/n;

    const-string v9, "WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lr5/n;->p:Lr5/n;

    new-instance v9, Lr5/n;

    const-string v10, "WRITE_SORTED_MAP_ENTRIES"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lr5/n;->q:Lr5/n;

    new-instance v10, Lr5/n;

    const-string v11, "ADJUST_DATES_TO_CONTEXT_TIME_ZONE"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    filled-new-array/range {v0 .. v10}, [Lr5/n;

    move-result-object v0

    sput-object v0, Lr5/n;->r:[Lr5/n;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lr5/n;
    .locals 1

    const-class v0, Lr5/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lr5/n;

    return-object p0
.end method

.method public static values()[Lr5/n;
    .locals 1

    sget-object v0, Lr5/n;->r:[Lr5/n;

    invoke-virtual {v0}, [Lr5/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr5/n;

    return-object v0
.end method
