;; phantom-grid-network

;; ================== AUXILIARY VALIDATION CONSTANTS ==================

(define-constant MIN-SKILL-COUNT u1)
(define-constant MAX-SKILL-COUNT u10)
(define-constant MIN-STRING-LENGTH u1)
(define-constant MAX-NAME-LENGTH u100)
(define-constant MAX-DESCRIPTION-LENGTH u500)
(define-constant MAX-REGION-LENGTH u100)
(define-constant MAX-SKILL-LENGTH u50)
(define-constant SYSTEM-GENESIS-BLOCK u0)

;; ================== PROTOCOL ERROR CONSTANTS ==================

(define-constant ERR-RESOURCE-UNAVAILABLE (err u404))
(define-constant ERR-PARTICIPANT-EXISTS (err u409))
(define-constant ERR-INVALID-CREDENTIALS (err u400))
(define-constant ERR-REGION-MALFORMED (err u401))
(define-constant ERR-COMPETENCY-INVALID (err u402))
(define-constant ERR-LISTING-MALFORMED (err u403))
(define-constant ERR-PARTICIPANT-MISSING (err u404))

;; ================== CORE PROTOCOL DATA STRUCTURES ==================

;; Repository for active resource allocation requests within the network
(define-map resource-allocation-registry
    principal
    {
        allocation-title: (string-ascii 100),
        allocation-description: (string-ascii 500),
        allocation-originator: principal,
        target-region: (string-ascii 100),
        required-competencies: (list 10 (string-ascii 50)),
        allocation-timestamp: uint,
        allocation-status: (string-ascii 20)
    }
)

;; Comprehensive participant capability database for network coordination
(define-map participant-capability-database
    principal
    {
        participant-identifier: (string-ascii 100),
        competency-portfolio: (list 10 (string-ascii 50)),
        operational-region: (string-ascii 100),
        background-summary: (string-ascii 500),
        registration-timestamp: uint,
        verification-status: (string-ascii 20)
    }
)
